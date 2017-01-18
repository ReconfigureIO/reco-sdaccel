set -ex

export LC_ALL=C
export XILINX_SDACCEL=/opt/Xilinx/SDx/2016.3
export XILINX_VIVADO="$XILINX_SDACCEL/Vivado"
export XILINXD_LICENSE_FILE=2100@l3976.local.nimbix.net
export RECO_PATH="/data/reco/$VERSION"
export PATH="$XILINX_SDACCEL/bin:$RECO_PATH:$XILINX_VIVADO/bin":$PATH
export LD_LIBRARY_PATH=$XILINX_SDX/runtime/lib/x86_64/:$LD_LIBRARY_PATH

JOB=$(uuidgen -t)
mkdir -p "/data/tests/$JOB"
cd "/data/tests/$JOB"

reco-sdaccel build "$RECO_PATH/go-teak/sdaccel/stubs/sda_kernel_action_stub_nomem.v"
reco-sdaccel simulate

cp /data/integration_test/hello .
XCL_EMULATION_MODE=hw_emu XCLBIN_DIR=.reco-work/sdaccel/dist/xclbin timeout 5m ./hello
