export DIR
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export RECO_PATH="$DIR"
export GOROOT="$RECO_PATH/go-root"
export PATH="$GOROOT/bin:$XILINX_SDACCEL/bin:$RECO_PATH:$XILINX_VIVADO/bin":$PATH
