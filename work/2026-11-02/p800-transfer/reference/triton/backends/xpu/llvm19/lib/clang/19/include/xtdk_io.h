/*!\file  xtdk_io.h
 * \brief XPU printf/memdump
*/

#ifndef __XCN_KERNEL_XTDK_IO_H__
#define __XCN_KERNEL_XTDK_IO_H__

#ifdef __XCN__
#if !defined (XTDK_ENABLE_BUILTIN_PRINTF) && !defined(__HOUYICC_RTC__)

#include <tuple>
#include <type_traits>
#include <utility>
#include "xtdk_atomic_functions.h"

#define PRINTF_MAGIC                    0x47424458
#define PRINTF_VERSION                  0x00010102

#define PRINTF_STDOUT_FP                0U
#define PRINTF_STDERR_FP                1U

#define PRINTF_CHUNK_SHIFT              8
#define PRINTF_CHUNK_SIZE               (1 << PRINTF_CHUNK_SHIFT)
#define PRINTF_CHUNK_ALIGN              (1 << PRINTF_CHUNK_SHIFT)
#define PRINTF_CHUNK_MASK               (PRINTF_CHUNK_ALIGN - 1)

#define PRINTF_MAX_NUM_CLUSTER          32
#define PRINTF_MAX_NUM_CORE             128

#define PRINTF_MAX_ARG                  16
#define PRINTF_MAX_STR_LEN              128

#if (defined __XPU_ARCH__) && (__XPU_ARCH__ > 5)
#define CLUSTER_NUM 12
#define PU_PER_CLUSTER 1
#define WARP_PER_PU 128
#elif (defined __XPU_ARCH__) && (__XPU_ARCH__ == 5)
#define CLUSTER_NUM 32
#define PU_PER_CLUSTER 2
#define WARP_PER_PU 64
#else
#define CLUSTER_NUM 2
#define PU_PER_CLUSTER 4
#define WARP_PER_PU 64
#endif

typedef struct __attribute__((aligned(8))) printfRingBuffer_st {
    unsigned long long buf_ptr; /* holds the global ptr to the buffer for device reference */
    unsigned long long tail;    /* never wraps, must mod buf_size before ref as index */
} printfRingBuffer;

/* read/write by kernel, read-only by host */
typedef struct __attribute__((aligned(8))) printfHostGlobals_st {
    printfRingBuffer rings[PRINTF_MAX_NUM_CLUSTER][PRINTF_MAX_NUM_CORE];
    unsigned long long buf_size;
    void              *device_priv;
} printfHostGlobals;

typedef struct printfChunkHeader_st {
    unsigned long long magic : 32;
    unsigned long long version : 31;
    unsigned long long continuation : 1;
} printfChunkHeader;

typedef struct printfHeader_st {
    printfChunkHeader header;
    unsigned int argcount;
    unsigned int packetlen;
    unsigned int coreid;
    unsigned int clusterid;
    unsigned long long completion_token;
    unsigned long long outstream;
} printfHeader;

typedef struct printfDeviceGlobals_st {
    int mutexes[PRINTF_MAX_NUM_CLUSTER][PRINTF_MAX_NUM_CORE];
    unsigned char reserved[1024];
} printfDeviceGlobals;

#define PRINTF_MAX_PACKET_LEN           (2560)

#define _ALIGNUP(value, align)   (((value) + (align-1)) & ~(align-1))

namespace printf_device_detail {

template<typename T>
class MagicPrintfCursor
{
    T *base;
    T *cursor;
    const printfChunkHeader &chunkhdr;
public:
    __device__ __attribute__((always_inline)) MagicPrintfCursor(void *base,void *cursor, printfChunkHeader &chunkhdr)
        : base{(T *)base}, cursor{(T *)cursor}, chunkhdr{chunkhdr}
    {}
    __device__ __attribute__((always_inline)) T *operator++(int) {
        if (((cursor - base) & PRINTF_CHUNK_MASK) == 0) {
            *(printfChunkHeader *)cursor = chunkhdr;
            cursor = (T *)(((unsigned long long)cursor) + sizeof chunkhdr);
        }
        T *ret = cursor++;
        return ret;
    }
    __device__ __attribute__((always_inline)) operator T *() const {
        return cursor;
    }
};

using MagicArgCursor = MagicPrintfCursor<unsigned long long>;
using MagicStrCursor = MagicPrintfCursor<char>;

template<typename T>
__device__ long write_data_single(MagicArgCursor &args_outp, MagicStrCursor &str_outp, T&& arg) {
    using PT = typename std::decay<T>::type;

    long sz = 0;

    if constexpr (std::is_pointer<PT>::value && std::is_same<typename std::decay<typename std::remove_pointer<PT>::type>::type, char>::value) {
        unsigned long long offset = ((long long)(char *)str_outp) - ((long long)(unsigned long long *)args_outp);
        long strl = 0;

        *args_outp++ = offset;
        sz = sizeof offset;

        if (arg == nullptr) {
            *str_outp++ = '(';
            *str_outp++ = 'n';
            *str_outp++ = 'u';
            *str_outp++ = 'l';
            *str_outp++ = 'l';
            *str_outp++ = ')';
            *str_outp++ = '\0';
            strl = 6;
        } else {
            char c;
            for (; strl < PRINTF_MAX_STR_LEN - 1; ++strl) {
                c = arg[strl];
                *str_outp++ = c;
                if (c == '\0') {
                    break;
                }
            }
            if (strl == PRINTF_MAX_STR_LEN - 1 && c != '\0') {
                *str_outp++ = '\0';
                ++strl;
            }
         }
        ++strl;
        sz += strl;
    } else {
        union {
            unsigned long long out;
            double darg;
            PT arg;
        } u;

        u.out = 0;
        if constexpr (std::is_floating_point<PT>::value) {
            u.darg = static_cast<double>(arg);
        } else {
            u.arg = arg;
        }

        *args_outp++ = u.out;
        sz = sizeof (u.out);
    }

    return sz;
}

__device__ long write_data(MagicArgCursor &args_outp, MagicStrCursor &str_outp) {
    return 0;
}

template<typename T, typename ...Args>
__device__ long write_data(MagicArgCursor &args_outp, MagicStrCursor &str_outp, T &&arg, Args &&...args) {
    return write_data_single(args_outp, str_outp, std::forward<T>(arg)) + write_data(args_outp, str_outp, std::forward<Args>(args)...);
}

class LockGuard {
    int * const mu;
    const bool is_master_lane;
    bool lock_owned;

public:
    enum {
        UNLOCK = 0,
        LOCKED = 1,
    };

    __device__ __attribute__((always_inline)) LockGuard(int *mu, bool is_master_lane)
        : mu{mu}, is_master_lane{is_master_lane}, lock_owned{false} { }

    __device__ __attribute__((always_inline)) ~LockGuard() {
        Unlock();
    }

    void __device__ __attribute__((always_inline)) Lock() {
        if (is_master_lane) {
            while (atomicCAS(mu, UNLOCK, LOCKED) != UNLOCK) {
            }
            lock_owned = true;
        }
    }

    void __device__ __attribute__((always_inline)) Unlock() {
        if (is_master_lane && lock_owned) {
            atomicExch(mu, UNLOCK);
            lock_owned = false;
        }
    }
};

inline __device__ printfHostGlobals * volatile __xcn_printf_host_globals = nullptr;

}   // namespace printf_device_detail

template<unsigned long long OUTSTREAM = PRINTF_STDOUT_FP, typename ... Args>
__attribute__((noinline)) __device__ int printf(const char* fmt, Args&& ... args) {
    unsigned char buf[PRINTF_MAX_PACKET_LEN];
    int fmtl = 0;
    char c;
    constexpr long arg_count = sizeof...(args) > PRINTF_MAX_ARG ? PRINTF_MAX_ARG : sizeof...(args);
    printfHeader *hdr = (printfHeader *)buf;
    printfChunkHeader chunk_hdr;
    printfHostGlobals *phg = printf_device_detail::__xcn_printf_host_globals;
    printfDeviceGlobals *pdg = nullptr;
    unsigned char *ring_buf = nullptr;
    unsigned long long ring_size;
    unsigned long bucket = 0;
    unsigned long slot = 0;
    unsigned int warp_slot_id = 0;
    unsigned int core_id = 0;
    unsigned int pu_id = 0;
    unsigned int cluster_id = 0;
    unsigned int warp_phy_id = 0;

    /* phg must be a host pointer */
    #if (defined __XPU_ARCH__) && (__XPU_ARCH__ >= 5)
        if (phg == nullptr) {
            return -1;
        }
    #else
        if (!((unsigned long long)phg & (1ULL << 52))) {
            return -1;
        }
    #endif

    pdg = reinterpret_cast<printfDeviceGlobals *>(phg->device_priv);
    if (pdg == nullptr) {
        return -1;
    }

    #if (defined __XPU_ARCH__) && (__XPU_ARCH__ > 5)
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID,  0, 4)" : "=s"(warp_slot_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID,  9, 4)" : "=s"(core_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID, 13, 4)" : "=s"(cluster_id) :);
        warp_phy_id = cluster_id * PU_PER_CLUSTER * WARP_PER_PU + core_id * 16 + warp_slot_id;
    #elif (defined __XPU_ARCH__) && (__XPU_ARCH__ == 5)
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID,  0, 4)" : "=s"(warp_slot_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID,  9, 2)" : "=s"(core_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID, 11, 1)" : "=s"(pu_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID, 12, 5)" : "=s"(cluster_id) :);
        warp_phy_id = cluster_id * PU_PER_CLUSTER * WARP_PER_PU + pu_id * WARP_PER_PU + core_id * 16 + warp_slot_id;
    #else
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID,  0, 4)" : "=s"(warp_slot_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID,  9, 2)" : "=s"(core_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID, 11, 2)" : "=s"(pu_id) :);
        asm volatile("s_getreg_b32 %0, hwreg(HW_REG_HW_ID, 13, 1)" : "=s"(cluster_id) :);
        warp_phy_id = cluster_id * PU_PER_CLUSTER * WARP_PER_PU + pu_id * WARP_PER_PU + core_id * 16 + warp_slot_id;
    #endif

    ring_size = phg->buf_size;

    chunk_hdr.magic        = PRINTF_MAGIC;
    chunk_hdr.version      = PRINTF_VERSION;
    chunk_hdr.continuation = 1;
    hdr->header = chunk_hdr;
    hdr->header.continuation = 0; /* first chunk of a packet */
    hdr->argcount = arg_count;
    hdr->packetlen = 0;
    hdr->coreid = pu_id * WARP_PER_PU + core_id;
    hdr->clusterid = cluster_id;
    hdr->completion_token = 0;
    hdr->outstream = OUTSTREAM;

    bucket = warp_phy_id / (PU_PER_CLUSTER * WARP_PER_PU) % CLUSTER_NUM;
    slot   = warp_phy_id % WARP_PER_PU;

    ring_buf = reinterpret_cast<unsigned char *>(phg->rings[bucket][slot].buf_ptr);
    printf_device_detail::MagicArgCursor args_outp{buf, buf + sizeof(*hdr), chunk_hdr};
    printf_device_detail::MagicStrCursor str_outp{buf, args_outp + hdr->argcount, chunk_hdr};

    for (; fmtl < PRINTF_MAX_STR_LEN - 1; ++fmtl) {
        c = fmt[fmtl];
        *str_outp++ = c;
        if (c == '\0') {
            break;
        }
    }
    if (fmtl == PRINTF_MAX_STR_LEN - 1 && c != '\0') {
        *str_outp++ = '\0';
        ++fmtl;
    }
    ++fmtl;

    hdr->packetlen  = printf_device_detail::write_data(args_outp, str_outp, std::forward<Args>(args)...); /* args + strs */
    hdr->packetlen += sizeof(printfHeader) + fmtl;                                /* header + fmt */
    hdr->packetlen  = _ALIGNUP(hdr->packetlen, PRINTF_CHUNK_ALIGN);

    if (hdr->packetlen > ring_size) {
        return -1;
    }

    unsigned int active_mask = __builtin_xcn_read_exec_lo();
    unsigned int laneid = threadIdx.x & 31;

    printf_device_detail::LockGuard lk{&pdg->mutexes[bucket][slot], laneid == 31 - __builtin_clz(active_mask)};

    lk.Lock();

    for (unsigned int i = 0; i < 32 && active_mask; ++i) {
        if (i == laneid) {
            unsigned long long head, tail;

            head = phg->rings[bucket][slot].tail;
            hdr->completion_token = head;
            tail = head % ring_size;

            if (ring_size - tail >= hdr->packetlen) {
                __builtin_memcpy(
                    reinterpret_cast<unsigned long *>(ring_buf + tail),
                    reinterpret_cast<unsigned long *>(&buf[0]),
                    hdr->packetlen
                );
            } else {
                long copyed_size = 0;
                __builtin_memcpy(
                    reinterpret_cast<unsigned long *>(ring_buf + tail),
                    reinterpret_cast<unsigned long *>(&buf[0]),
                    ring_size - tail
                );
                asm volatile("s_mfence gmcnt(1) smcnt(1)");
                copyed_size = ring_size - tail;
                __builtin_memcpy(
                    reinterpret_cast<unsigned long *>(ring_buf),
                    reinterpret_cast<unsigned long *>(&buf[0] + copyed_size),
                    hdr->packetlen - copyed_size
                );
            }
            asm volatile("s_mfence gmcnt(1) smcnt(1)");
            head += hdr->packetlen;
            phg->rings[bucket][slot].tail = head;
            asm volatile("s_mfence gmcnt(1) smcnt(1)");

            active_mask -= (1 << i);
        }
    }

    lk.Unlock();

    return hdr->argcount;
}

#else 

extern "C" __device__ int printf(const char *, ...);

#endif // XTDK_ENABLE_BUILTIN_PRINTF

#endif // __XCN__
#endif // __XCN_KERNEL_XTDK_IO_H__
