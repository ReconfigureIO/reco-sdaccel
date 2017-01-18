# XDMA HAL Driver Makefile

CXX := g++
CXX_EXT := cpp
CXXFLAGS :=  -Werror -std=c++11
LIBNAME := libxcldrv.so
XCLHAL_VER =-DXCLHAL_MAJOR_VER=1 -DXCLHAL_MINOR_VER=1

SHIM_INC := -I../../../
CXXFLAGS += $(CXXFLAGS) $(XCLHAL_VER) $(SHIM_INC) -fpic -fvisibility=hidden -lrt

ifeq ($(debug),1)
	CXXFLAGS += -g -DDEBUG
else
	CXXFLAGS += -O2 -DNDEBUG
endif

SRCS := $(wildcard *.$(CXX_EXT))
OBJS := $(patsubst %.$(CXX_EXT), %.o, $(SRCS))

-include $(OBJS:.o=.d)

all: $(LIBNAME)

clean:
	rm -rf *.o *.d $(LIBNAME)

%.o: %.$(CXX_EXT)
	$(CXX) $(CXXFLAGS) $(MYCFLAGS) -c $< -o $@
	$(CXX) $(CXXFLAGS) $(MYCFLAGS) -c -MM $< -o $(patsubst %.o, %.d, $@)

$(LIBNAME) : $(OBJS)
	$(CXX) -shared -o $@ $(OBJS)

.PHONY: all clean

.DEFAULT_GOAL := all
