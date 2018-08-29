
BUILD_DIR := $(ROOT_DIR)/.reco-work/sdaccel/build
LOGS_DIR := $(ROOT_DIR)/.reco-work/sdaccel/logs
DIST_DIR := $(ROOT_DIR)/.reco-work/sdaccel/dist
REPORTS_DIR := $(ROOT_DIR)/.reco-work/sdaccel/reports
XCLBIN_DIR := $(ROOT_DIR)/.reco-work/sdaccel/dist/xclbin
VERILOG_DIR := $(ROOT_DIR)/.reco-work/sdaccel/verilog
export VENDOR_DIR := $(ROOT_DIR)/.reco-work/vendor
ARG_WIDTH = $(shell ll2xmldef -total-argsize main.Top <  ${ROOT_DIR}/main.go.ll)

XO_NAME := "reconfigure_io_sdaccel_builder_stub_0_1.xo"

KERNEL_NAME := "kernel_test"
DEVICE := "xilinx_adm-pcie-ku3_2ddr-xpr_3_3"
DEVICE_FULL := "xilinx:adm-pcie-ku3:2ddr-xpr:3.3"
TARGET := "hw_emu"
MEMORY_INTERFACE="axi"
AXI_DATA_WIDTH := 64
PORTS := 2
OPTIMIZE := "no"
OPTIMIZE_LEVEL := 100
CLFLAGS :=
CPUS := 4

GO_TEAK_BUILD_FLAGS :=
AXI_CONFIG_FLAGS = -axi_data_width ${AXI_DATA_WIDTH}

ifeq ($(OPTIMIZE), yes)
	GO_TEAK_FLAGS := -O -p${OPTIMIZE_LEVEL}
else
	GO_TEAK_FLAGS :=
endif

export GO_TEAK_BIN := go-teak-sdaccel

ifneq ($(MEMORY_INTERFACE), axi)
	GO_TEAK_BIN := go-teak-smi
	GO_TEAK_BUILD_FLAGS += --ports ${PORTS}
	AXI_CONFIG_FLAGS += -enable_axi_wid
endif

ifeq ($(COMPILER), rio)
	AXI_CONFIG_FLAGS += -enable_rio
	AXI_CONFIG_FLAGS += -kernel_arg_width ${ARG_WIDTH}
endif

PART := "xcku115-flvf1924-1-c"
PART_FAMILY := "kintexu"
INPUT := go

ifeq ($(INPUT),go)
	SOURCE_FILE := main.go
else
	SOURCE_FILE := main.v
endif

.PHONY: kernel xo clean cmds sim verilog graph fix report

kernel: ${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin

xo: ${BUILD_DIR}/${XO_NAME}

graph: ${ROOT_DIR}/main-graph.pdf

verilog: ${VERILOG_DIR}/main.v ${VERILOG_DIR}/includes ${VERILOG_DIR}/library

print-% : ; @echo $($*)

${BUILD_DIR}:
	mkdir -p ${BUILD_DIR}

${BUILD_DIR}/${XO_NAME}: ${BUILD_DIR} ${INPUT_FILE} ${VERILOG_DIR}/main.v ${VERILOG_DIR}/library | ${LOGS_DIR}
	cd ${BUILD_DIR} && \
	/usr/bin/time -ao ${ROOT_DIR}/times.out -f "xo,%e,%M" \
		make_xo \
			${VERILOG_DIR} \
			${PART} \
			${PART_FAMILY} \
			${AXI_CONFIG_FLAGS} \
				> ${LOGS_DIR}/synthesis_log.txt

${XCLBIN_DIR}:
	mkdir -p "${XCLBIN_DIR}"

${BUILD_DIR}/reports: | ${BUILD_DIR}
	mkdir -p $@

${BUILD_DIR}/reports/timing.json: | ${BUILD_DIR}/reports
	parse_times times.out > $@

${REPORTS_DIR}/utilization.json: ${BUILD_DIR}/reports/timing.json | ${REPORTS_DIR}
	merge_reports ${BUILD_DIR}/reports/reconfigure_io_sdaccel_builder_stub_0_1_util.json ${BUILD_DIR}/reports/timing.json > $@

report: ${REPORTS_DIR}/utilization.json

${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin: ${BUILD_DIR}/${XO_NAME} ${XCLBIN_DIR}
	cd ${BUILD_DIR} && \
	/usr/bin/time -ao ${ROOT_DIR}/times.out -f "xclbin,%e,%M" \
		xocc \
			-j${CPUS} \
			-O3 \
			-t "${TARGET}" \
			$(CLFLAGS) \
			--xdevice ${DEVICE_FULL} \
			-l "$<" \
			-o "$@" \
			-r system

${DIST_DIR}/emconfig.json: ${DIST_DIR}
	cd ${DIST_DIR} && \
	XCL_EMULATION_MODE=${TARGET} \
		emconfigutil --xdevice ${DEVICE_FULL} --nd 1

sim: ${DIST_DIR}/emconfig.json

fix:
	${DIR}/go/bin/reco-fix .

${DIST_DIR}:
	mkdir -p "${DIST_DIR}"


${REPORTS_DIR}:
	mkdir -p "${REPORTS_DIR}"

${LOGS_DIR}:
	mkdir -p "${LOGS_DIR}"

${DIST_DIR}/vendor/src: ${ROOT_DIR}/vendor/github.com/ReconfigureIO/sdaccel
	mkdir -p "${VENDOR_DIR}"
	ln -sfT "${ROOT_DIR}/vendor" "${VENDOR_DIR}/src"

${ROOT_DIR}/vendor/github.com/ReconfigureIO/sdaccel:
	mkdir -p ${ROOT_DIR}/vendor/github.com/ReconfigureIO
	ln -sf "${DIR}/go/src/github.com/ReconfigureIO/sdaccel" ${ROOT_DIR}/vendor/github.com/ReconfigureIO/sdaccel

${DIST_DIR}/%: ${ROOT_DIR}/cmd/%/main.go ${DIST_DIR} | ${DIST_DIR}/vendor/src fix
	LIBRARY_PATH=${XILINX_SDX}/SDK/lib/lnx64.o/:${XILINX_SDX}/runtime/lib/x86_64/:/usr/lib/x86_64-linux-gnu/:${LIBRARY_PATH} \
	CGO_CFLAGS=-I${XILINX_SDX}/runtime/include/1_2/ \
	GOPATH=${VENDOR_DIR}:${DIR}/go \
		go build -tags opencl -o "$@" "$<"

CMD_SOURCES := $(shell find ${ROOT_DIR}/cmd/ -name main.go)
CMD_TARGETS := $(patsubst ${ROOT_DIR}/cmd/%/main.go,${DIST_DIR}/%,$(CMD_SOURCES))

cmds: $(CMD_TARGETS)

${VERILOG_DIR}:
	mkdir -p ${VERILOG_DIR}

VERILOG_SOURCES := $(shell find ${DIR}/eTeak/verilog/SELF_files/ -type f)
INCLUDE_TARGETS := $(patsubst ${DIR}/eTeak/verilog/SELF_files/%,${VERILOG_DIR}/includes/%,$(VERILOG_SOURCES))

${VERILOG_DIR}/main.v: ${ROOT_DIR}/${SOURCE_FILE} $(INCLUDE_TARGETS) ${VERILOG_DIR} | ${DIST_DIR}/vendor/src fix
ifeq ($(INPUT),go)
	/usr/bin/time -ao ${ROOT_DIR}/times.out -f "verilog,%e,%M" build_go $< $@
else
	cp ${ROOT_DIR}/main.v $@
	cp ${ROOT_DIR}/main.v.xmldef ${VERILOG_DIR}
endif

${ROOT_DIR}/main-graph.pdf: ${ROOT_DIR}/main.go $(INCLUDE_TARGETS) ${VERILOG_DIR} | ${DIST_DIR}/vendor/src fix
	cd ${DIR}/eTeak && \
	PATH=${DIR}/eTeak/bin:${PATH} \
	GOPATH=${VENDOR_DIR} \
	/usr/bin/time -ao ${ROOT_DIR}/times.out -f "verilog,%e,%M" \
		./go-teak graph ${GO_TEAK_FLAGS} $< -o $@

${VERILOG_DIR}/includes: ${VERILOG_DIR}
	mkdir -p ${VERILOG_DIR}/includes
	if [ -d "${ROOT_DIR}/includes/" ]; then cp ${ROOT_DIR}/includes/* ${VERILOG_DIR}/includes; fi

${VERILOG_DIR}/library: ${VERILOG_DIR}
	mkdir -p ${VERILOG_DIR}/library
	cp ${DIR}/go-teak/src/sdaccel/verilog/* ${VERILOG_DIR}/library
ifeq ($(MEMORY_INTERFACE),smi)
	cp ${DIR}/smi/verilog/* ${VERILOG_DIR}/library
	cd ${VERILOG_DIR}/library; smiMemWrapperGen -numMemPorts ${PORTS} -axiBusWidth ${AXI_DATA_WIDTH}
endif

${VERILOG_DIR}/includes/%: ${DIR}/eTeak/verilog/SELF_files/% | ${VERILOG_DIR}/includes
	@cp $< $@

clean:
	rm -rf "${ROOT_DIR}/.reco-work"
