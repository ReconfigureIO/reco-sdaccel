set -ex

export LC_ALL=C
export XILINX_SDACCEL=/opt/Xilinx/SDx/2016.3
export XILINX_SDX="$XILINX_SDACCEL"
export XILINX_VIVADO="$XILINX_SDACCEL/Vivado"
export XILINXD_LICENSE_FILE=2100@l3976.local.nimbix.net
source "/data/reco/$VERSION/settings.sh"

source /etc/JARVICE/jobinfo.sh

cd "/data/job/$JOB_LABEL"
reco-sdaccel cmds
reco-sdaccel image
