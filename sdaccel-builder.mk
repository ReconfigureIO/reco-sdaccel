
BUILD_DIR := "/tmp/workspace/.reco-work/sdaccel/build"
DIST_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/dist"
REPORTS_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/reports"
XCLBIN_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/dist/xclbin"
VERILOG_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/verilog"

XO_NAME := "reconfigure_io_sdaccel_builder_stub_0_1.xo"

KERNEL_NAME := "kernel_test"
DEVICE := "xilinx_adm-pcie-ku3_2ddr-xpr_3_3"
DEVICE_FULL := "xilinx:adm-pcie-ku3:2ddr-xpr:3.3"
TARGET := "hw_emu"
OPTIMIZE := "no"
OPTIMIZE_LEVEL := 100
CLFLAGS :=
CPUS := 4

ifeq ($(OPTIMIZE), yes)
	GO_TEAK_FLAGS := -O -p${OPTIMIZE_LEVEL}
else
	GO_TEAK_FLAGS :=
endif

PART := "xcku115-flvf1924-1-c"
PART_FAMILY := "kintexu"

.PHONY: kernel xo clean cmds sim verilog graph

kernel: ${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin

xo: ${BUILD_DIR}/${XO_NAME}

graph: ${ROOT_DIR}/main-graph.pdf

verilog: ${VERILOG_DIR}/main.v ${VERILOG_DIR}/includes

${BUILD_DIR}:
	mkdir -p ${BUILD_DIR}

${BUILD_DIR}/${XO_NAME}: ${BUILD_DIR} ${INPUT_FILE} ${VERILOG_DIR}/main.v
	cd ${BUILD_DIR} && /usr/bin/time -ao ${ROOT_DIR}/times.out -f "xo,%e,%M" vivado -notrace -mode batch -source "${DIR}/go-teak/src/sdaccel/scripts/sda_kernel_build.tcl" -tclargs -action_source_file "${VERILOG_DIR}/main.v" -include_source_dir "${VERILOG_DIR}/includes" -param_args_file "${VERILOG_DIR}/main.v.xmldef" -vendor reconfigure.io -library sdaccel-builder -name stub -version 0.1 -part ${PART} -part_family ${PART_FAMILY}
	cp ${BUILD_DIR}/reports/* ${REPORTS_DIR}

${XCLBIN_DIR}:
	mkdir -p "${XCLBIN_DIR}"

${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin: ${BUILD_DIR}/${XO_NAME} ${XCLBIN_DIR}
	cd ${BUILD_DIR} && /usr/bin/time -ao ${ROOT_DIR}/times.out -f "xclbin,%e,%M" xocc -j${CPUS} -O3 -t "${TARGET}" $(CLFLAGS) --xdevice ${DEVICE_FULL} -l $< -o $@ -r estimate

${DIST_DIR}/emconfig.json: ${DIST_DIR}
	cd ${DIST_DIR} && XCL_EMULATION_MODE=${TARGET} emconfigutil --xdevice ${DEVICE_FULL} --nd 1

sim: ${DIST_DIR}/emconfig.json

${DIST_DIR}:
	mkdir -p "${DIST_DIR}"

${REPORTS_DIR}:
	mkdir -p "${REPORTS_DIR}"

${DIST_DIR}/vendor/src:
	mkdir -p ${DIST_DIR}/vendor
	ln -sf ${DIST_DIR}/vendor ${DIST_DIR}/vendor/src

${DIST_DIR}/%: ${ROOT_DIR}/cmd/%/main.go ${DIST_DIR} | ${DIST_DIR}/vendor/src
	LIBRARY_PATH=${XILINX_SDX}/runtime/lib/x86_64/:/usr/lib/x86_64-linux-gnu:${LIBRARY_PATH} CGO_CFLAGS=-I${XILINX_SDX}/runtime/include/1_2/ GOPATH=${DIR}/go:${ROOT_DIR}/vendor go build -o $@ $<

CMD_SOURCES := $(shell find ${ROOT_DIR}/cmd/ -name main.go)
CMD_TARGETS := $(patsubst ${ROOT_DIR}/cmd/%/main.go,${DIST_DIR}/%,$(CMD_SOURCES))

cmds: $(CMD_TARGETS)

${VERILOG_DIR}:
	mkdir -p ${VERILOG_DIR}

VERILOG_SOURCES := $(shell find ${DIR}/eTeak/verilog/SELF_files/ -type f)
INCLUDE_TARGETS := $(patsubst ${DIR}/eTeak/verilog/SELF_files/%,${VERILOG_DIR}/includes/%,$(VERILOG_SOURCES))

${VERILOG_DIR}/main.v: ${ROOT_DIR}/main.go $(INCLUDE_TARGETS) ${VERILOG_DIR} | ${DIST_DIR}/vendor/src
	cd ${DIR}/eTeak && PATH=${DIR}/eTeak/bin:${PATH} GOPATH=${DIR}/go-teak:${ROOT_DIR}/vendor /usr/bin/time -ao ${ROOT_DIR}/times.out -f "verilog,%e,%M" ./go-teak-sdaccel build ${GO_TEAK_FLAGS} $< -o $@

${ROOT_DIR}/main-graph.pdf: ${ROOT_DIR}/main.go $(INCLUDE_TARGETS) ${VERILOG_DIR} | ${DIST_DIR}/vendor/src
	cd ${DIR}/eTeak && PATH=${DIR}/eTeak/bin:${PATH} GOPATH=${DIR}/go-teak:${ROOT_DIR}/vendor /usr/bin/time -ao ${ROOT_DIR}/times.out -f "verilog,%e,%M" ./go-teak graph ${GO_TEAK_FLAGS} $< -o $@

${VERILOG_DIR}/includes: ${VERILOG_DIR}
	mkdir -p ${VERILOG_DIR}/includes

${VERILOG_DIR}/includes/%: ${DIR}/eTeak/verilog/SELF_files/% ${VERILOG_DIR}/includes
	@cp $< $@

clean:
	rm -rf "${ROOT_DIR}/.reco-work"
