
BUILD_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/build"
DIST_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/dist"
XCLBIN_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/dist/xclbin"
VERILOG_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/verilog"

XO_NAME := "reconfigure_io_reco_sdaccel_stub_0_1.xo"

KERNEL_NAME := "kernel_test"
DEVICE := "xilinx_adm-pcie-ku3_2ddr-xpr_3_2"
TARGET := "hw_emu"

.PHONY: kernel xo clean verilog

kernel: ${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin

xo: ${BUILD_DIR}/${XO_NAME}

verilog: ${VERILOG_DIR}/main.v ${VERILOG_DIR}/includes

${BUILD_DIR}:
	mkdir -p "${BUILD_DIR}"

${BUILD_DIR}/${XO_NAME}: ${BUILD_DIR} ${INPUT_FILE} ${VERILOG_DIR}/main.v
	cd "${BUILD_DIR}" && vivado -mode batch -source "${DIR}/go-teak/src/sdaccel/scripts/sda_kernel_build.tcl" -tclargs -action_source_file "${VERILOG_DIR}/main.v" -include_source_dir "${VERILOG_DIR}/includes" -vendor reconfigure.io -library reco-sdaccel -name stub -version 0.1

${XCLBIN_DIR}:
	mkdir -p "${XCLBIN_DIR}"

${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin: ${BUILD_DIR}/${XO_NAME} ${XCLBIN_DIR}
	xocc -j8 -O3 -t "${TARGET}" --xdevice 'xilinx:adm-pcie-ku3:2ddr-xpr:3.2' -l $< -o $@

${VERILOG_DIR}:
	mkdir -p ${VERILOG_DIR}

VERILOG_SOURCES := $(shell find ${DIR}/eTeak/verilog/SELF_files/ -type f)
INCLUDE_TARGETS := $(patsubst ${DIR}/eTeak/verilog/SELF_files/%,${VERILOG_DIR}/includes/%,$(VERILOG_SOURCES))

${VERILOG_DIR}/main.v: ${ROOT_DIR}/main.go $(INCLUDE_TARGETS) ${VERILOG_DIR}
	cd ${DIR}/eTeak && PATH=${DIR}/eTeak/bin:${PATH} GOPATH=${DIR}/go-teak ./go-teak-sdaccel build $< -o $@

${VERILOG_DIR}/includes: ${VERILOG_DIR}
	mkdir -p ${VERILOG_DIR}/includes

${VERILOG_DIR}/includes/%: ${DIR}/eTeak/verilog/SELF_files/% ${VERILOG_DIR}/includes
	cp $< $@

clean:
	rm -rf "${ROOT_DIR}/.reco-work"
