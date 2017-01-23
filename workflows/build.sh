set -ex

export LC_ALL=C
export XILINX_SDACCEL=/opt/Xilinx/SDx/2016.3
export XILINX_VIVADO="$XILINX_SDACCEL/Vivado"
export XILINXD_LICENSE_FILE=2100@l3976.local.nimbix.net
export RECO_PATH="/data/reco/$VERSION"
export PATH="$XILINX_SDACCEL/bin:$RECO_PATH:$XILINX_VIVADO/bin":$PATH
source /etc/JARVICE/jobinfo.sh

cd "/data/job/$JOB_LABEL"
reco-sdaccel build
reco-sdaccel simulate

cp /data/integration_test/hello .

source /opt/Xilinx/SDx/2016.3/settings64.sh
XCL_EMULATION_MODE=hw_emu XCL_BINDIR=.reco-work/sdaccel/dist/xclbin timeout 5m ./hello
