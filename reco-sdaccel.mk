
BUILD_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/build"
DIST_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/dist"
XCLBIN_DIR := "$(ROOT_DIR)/.reco-work/sdaccel/dist/xclbin"

XO_NAME := "reconfigure_io_reco_sdaccel_stub_0_1.xo"

KERNEL_NAME := "kernel_test"
DEVICE := "xilinx_adm-pcie-ku3_2ddr-xpr_3_2"
TARGET := "hw_emu"

.PHONY: kernel xo clean cmds

kernel: ${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin

xo: ${BUILD_DIR}/${XO_NAME}

${BUILD_DIR}:
	mkdir -p "${BUILD_DIR}"

${BUILD_DIR}/${XO_NAME}: ${BUILD_DIR} ${INPUT_FILE}
	cd "${BUILD_DIR}" && vivado -mode batch -source "${DIR}/go-teak/sdaccel/scripts/sda_kernel_build.tcl" -tclargs -action_source_file "${INPUT_FILE}" -wrapper_source_dir "${DIR}/go-teak/sdaccel/verilog/" -vendor reconfigure.io -library reco-sdaccel -name stub -version 0.1

${XCLBIN_DIR}:
	mkdir -p "${XCLBIN_DIR}"

${XCLBIN_DIR}/${KERNEL_NAME}.${TARGET}.${DEVICE}.xclbin: ${BUILD_DIR}/${XO_NAME} ${XCLBIN_DIR}
	xocc -j8 -O3 -t "${TARGET}" --xdevice 'xilinx:adm-pcie-ku3:2ddr-xpr:3.2' -l $< -o $@

${DIST_DIR}:
	mkdir -p "${DIST_DIR}"

${DIST_DIR}/%: ${ROOT_DIR}/cmd/%/main.go ${DIST_DIR}
	LIBRARY_PATH="$XILINX_SDX/runtime/lib/x86_64/":/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH CGO_CFLAGS="-I$XILINX_SDX/runtime/include/1_2/" GOPATH="${DIR}/go" go build -o $@ $<

CMD_SOURCES := $(shell find ${ROOT_DIR}/cmd/ -name main.go)
CMD_TARGETS := $(patsubst ${ROOT_DIR}/cmd/%/main.go,${DIST_DIR}/%,$(CMD_SOURCES))

cmds: $(CMD_TARGETS)

clean:
	rm -rf "${ROOT_DIR}/.reco-work"
