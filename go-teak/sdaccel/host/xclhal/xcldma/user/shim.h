#ifndef _XDMA_SHIM_H_
#define _XDMA_SHIM_H_

/**
 * Copyright (C) 2015-2016 Xilinx, Inc
 * Author: Sonal Santan
 * XDMA HAL Driver layered on top of XDMA kernel driver
 */

#include "driver/include/xclhal.h"
#include "driver/include/xclperf.h"
#include "driver/xcldma/include/xbar_sys_parameters.h"

#include <fstream>
#include <list>
#include <vector>
#include <string>
#include <mutex>

// Work around GCC 4.8 + XDMA BAR implementation bugs
// With -O3 PCIe BAR read/write are not reliable hence force -O2 as max
// optimization level for pcieBarRead() and pcieBarWrite()
#if defined(__GNUC__) && defined(NDEBUG)
#define SHIM_O2 __attribute__ ((optimize("-O2")))
#else
#define SHIM_O2
#endif

namespace xclxdma {
    // Memory alignment for DDR and AXI-MM trace access
    template <typename T> class AlignedAllocator {
        void *mBuffer;
        size_t mCount;
    public:
        T *getBuffer() {
            return (T *)mBuffer;
        }

        size_t size() const {
            return mCount * sizeof(T);
        }

        AlignedAllocator(size_t alignment, size_t count) : mBuffer(0), mCount(count) {
            if (posix_memalign(&mBuffer, alignment, count * sizeof(T))) {
                mBuffer = 0;
            }
        }
        ~AlignedAllocator() {
            if (mBuffer)
                free(mBuffer);
        }
    };

    class MemoryManager;
    class DataMover;
    // XDMA Shim
    class XDMAShim {

        struct ELARecord {
            unsigned mStartAddress;
            unsigned mEndAddress;
            unsigned mDataCount;

            std::streampos mDataPos;
            ELARecord() : mStartAddress(0), mEndAddress(0),
                          mDataCount(0), mDataPos(0) {}
        };

        typedef std::list<ELARecord> ELARecordList;

        typedef std::list<std::pair<uint64_t, uint64_t> > PairList;

    public:

        // Bitstreams
        int xclLoadBitstream(const char *fileName);
        int xclLoadXclBin(const xclBin *buffer);
        int xclUpgradeFirmware(const char *fileName);
        int xclUpgradeFirmware2(const char *file1, const char* file2);
        int xclUpgradeFirmwareXSpi(const char *fileName, int device_index=0);
        int xclTestXSpi(int device_index);
        int xclBootFPGA();
        int resetDevice(xclResetKind kind);
        int xclReClock(unsigned targetFreqMHz);
        int xclReClock2(unsigned short region, const unsigned short *targetFreqMHz);

        // Raw read/write
        size_t xclWrite(xclAddressSpace space, uint64_t offset, const void *hostBuf, size_t size);
        size_t xclRead(xclAddressSpace space, uint64_t offset, void *hostBuf, size_t size);

        // Buffer management
        uint64_t xclAllocDeviceBuffer(size_t size);
        uint64_t xclAllocDeviceBuffer2(size_t size, xclMemoryDomains domain, unsigned flags);
        void xclFreeDeviceBuffer(uint64_t buf);
        size_t xclCopyBufferHost2Device(uint64_t dest, const void *src, size_t size, size_t seek);
        size_t xclCopyBufferDevice2Host(void *dest, uint64_t src, size_t size, size_t skip);

        // Performance monitoring
        // Control
        double xclGetDeviceClockFreqMHz();
        double xclGetReadMaxBandwidthMBps();
        double xclGetWriteMaxBandwidthMBps();
        void xclSetOclRegionProfilingNumberSlots(uint32_t numSlots);
        size_t xclPerfMonClockTraining(xclPerfMonType type);
        // Counters
        size_t xclPerfMonStartCounters(xclPerfMonType type);
        size_t xclPerfMonStopCounters(xclPerfMonType type);
        size_t xclPerfMonReadCounters(xclPerfMonType type, xclCounterResults& counterResults);
        // Trace
        size_t xclPerfMonStartTrace(xclPerfMonType type, uint32_t startTrigger);
        size_t xclPerfMonStopTrace(xclPerfMonType type);
        uint32_t xclPerfMonGetTraceCount(xclPerfMonType type);
        size_t xclPerfMonReadTrace(xclPerfMonType type, xclTraceResultsVector& traceVector);

        // Sanity checks
        int xclGetDeviceInfo(xclDeviceInfo *info);
        int xclGetDeviceInfo2(xclDeviceInfo2 *info);
        static XDMAShim *handleCheck(void *handle);
        static unsigned xclProbe();
        bool xclLockDevice();
        unsigned getTAG() const {
            return mTag;
        }
        bool isGood() const;

        ~XDMAShim();
        XDMAShim(unsigned index, const char *logfileName, xclVerbosityLevel verbosity);

    private:

        size_t xclReadModifyWrite(uint64_t offset, const void *hostBuf, size_t size);
        size_t xclReadSkipCopy(uint64_t offset, void *hostBuf, size_t size);
        bool zeroOutDDR();

        bool isXPR() const {
          return ((mDeviceInfo.mSubsystemId >> 12) == 4);
        }

        bool isMultipleOCLClockSupported() {
          unsigned dsaNum = ((mDeviceInfo.mDeviceId << 16) | mDeviceInfo.mSubsystemId);
          // 0x82384431 : TUL KU115 4ddr 3.1 DSA
          return ((dsaNum == 0x82384431)  || (dsaNum == 0x82384432))? true : false;
        }

        bool isUltraScale() const {
            return (mDeviceInfo.mDeviceId & 0x8000);
        }
        void initMemoryManager();

        // Core DMA code
        SHIM_O2 int pcieBarRead(int bar_num, unsigned long long offset, void* buffer, unsigned long long length);
        SHIM_O2 int pcieBarWrite(int bar_num, unsigned long long offset, const void* buffer, unsigned long long length);
        int freezeAXIGate();
        int freeAXIGate();

        // PROM flashing
        int prepare(unsigned startAddress, unsigned endAddress);
        int program(std::ifstream& mcsStream, const ELARecord& record);
        int program(std::ifstream& mcsStream);
        int waitForReady(unsigned code, bool verbose = true);
        int waitAndFinish(unsigned code, unsigned data, bool verbose = true);

        //XSpi flashing.
        bool prepareXSpi();
        int programXSpi(std::ifstream& mcsStream, const ELARecord& record);
        int programXSpi(std::ifstream& mcsStream);
        bool waitTxEmpty();
        bool isFlashReady();
        //bool windDownWrites();
        bool bulkErase();
        bool sectorErase(unsigned Addr);
        bool writeEnable();
#if 0
	bool dataTransfer(bool read);
#endif
        bool readPage(unsigned addr, uint8_t readCmd = 0xff);
        bool writePage(unsigned addr, uint8_t writeCmd = 0xff);
        unsigned readReg(unsigned offset);
        int writeReg(unsigned regOffset, unsigned value);
        bool finalTransfer(uint8_t *sendBufPtr, uint8_t *recvBufPtr, int byteCount);
        bool getFlashId();
        //All remaining read /write register commands can be issued through this function.
        bool readRegister(unsigned commandCode, unsigned bytes);
        bool writeRegister(unsigned commandCode, unsigned value, unsigned bytes);
        bool select4ByteAddressMode();
        bool deSelect4ByteAddressMode();


        // Performance monitoring helper functions
        bool isDSAVersion(unsigned majorVersion, unsigned minorVersion, bool onlyThisVersion);
        unsigned getBankCount();
        uint64_t getHostTraceTimeNsec();
        uint64_t getPerfMonBaseAddress(xclPerfMonType type);
        uint64_t getPerfMonFifoBaseAddress(xclPerfMonType type, uint32_t fifonum);
        uint64_t getPerfMonFifoReadBaseAddress(xclPerfMonType type, uint32_t fifonum);
        uint32_t getPerfMonNumberSlots(xclPerfMonType type);
        uint32_t getPerfMonNumberSamples(xclPerfMonType type);
        uint32_t getPerfMonNumberFifos(xclPerfMonType type);
        uint32_t getPerfMonByteScaleFactor(xclPerfMonType type);
        uint8_t  getPerfMonShowIDS(xclPerfMonType type);
        uint8_t  getPerfMonShowLEN(xclPerfMonType type);
        uint32_t getPerfMonSlotStartBit(xclPerfMonType type, uint32_t slotnum);
        uint32_t getPerfMonSlotDataWidth(xclPerfMonType type, uint32_t slotnum);
        size_t resetFifos(xclPerfMonType type);
        uint32_t bin2dec(std::string str, int start, int number);
        uint32_t bin2dec(const char * str, int start, int number);
        std::string dec2bin(uint32_t n);
        std::string dec2bin(uint32_t n, unsigned bits);
        static std::string getDSAName(unsigned short deviceId, unsigned short subsystemId);

    private:
        // This is a hidden signature of this class and helps in preventing
        // user errors when incorrect pointers are passed in as handles.
        const unsigned mTag;
        const int mBoardNumber;
        const size_t maxDMASize;
        bool mLocked;

#ifndef _WINDOWS
// TODO: Windows build support
        // mOffsets doesn't seem to be used
        // and it caused window compilation error when we try to initialize it
        const uint64_t mOffsets[XCL_ADDR_SPACE_MAX];
#endif
        DataMover *mDataMover;
        int mUserHandle;
        uint32_t mOclRegionProfilingNumberSlots;

        char *mUserMap;
        std::ofstream mLogStream;
        xclVerbosityLevel mVerbosity;
        std::string mBinfile;
        ELARecordList mRecordList;
        std::vector<MemoryManager *> mDDRMemoryManager;
        xclDeviceInfo2 mDeviceInfo;

    public:
        static const unsigned TAG;
    };
}

#endif

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
