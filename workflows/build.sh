set -e

export DIR
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export LC_ALL=C
export XILINX_SDACCEL=/opt/Xilinx/SDx/2016.3
export XILINX_SDX="$XILINX_SDACCEL"
export XILINX_VIVADO="$XILINX_SDACCEL/Vivado"
export XILINXD_LICENSE_FILE=2100@l3976.local.nimbix.net
source "$DIR/../settings.sh"

JOB="$1"
cd "/data/job/$JOB"

sdaccel-builder cmds
sdaccel-builder image
