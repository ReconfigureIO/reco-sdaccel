set -ex

export LC_ALL=C
export XILINX_SDACCEL=/opt/Xilinx/SDx/2016.3
export XILINX_SDX="$XILINX_SDACCEL"
export XILINX_VIVADO="$XILINX_SDACCEL/Vivado"
export XILINXD_LICENSE_FILE=2100@l3976.local.nimbix.net
export RECO_PATH="/data/reco/$VERSION"
export GOROOT="$RECO_PATH/go-root"
export PATH="$GOROOT/bin:$XILINX_SDACCEL/bin:$RECO_PATH:$XILINX_VIVADO/bin":$PATH

source /etc/JARVICE/jobinfo.sh

cd "/data/job/$JOB_LABEL"
reco-sdaccel build
reco-sdaccel cmds
