/*!\file  xtdk_io_xpu4.h
 * \brief XPU4/5 printf/assert_device
*/

#ifndef __XPU_KERNEL_XTDK_IO_XPU4_H
#define __XPU_KERNEL_XTDK_IO_XPU4_H

#if defined __xpu__

#include "xpu/kernel/xtdk.h"

#if defined(__arch_xpu4__) || defined(__arch_xpu5__)

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

#if defined(__arch_xpu4__) || defined(__arch_xpu5__)
typedef struct printfDeviceGlobals_st {
    int mutexes[PRINTF_MAX_NUM_CLUSTER][PRINTF_MAX_NUM_CORE];
    unsigned char reserved[1024];
} printfDeviceGlobals;
#endif // #if defined(__arch_xpu4__) || defined(__arch_xpu5__)

#define PRINTF_MAX_PACKET_LEN           (2560)

#define _ALIGNUP(value, align)   (((value) + (align-1)) & ~(align-1))

__device__ inline void memcpy_gm2lm(void *dst, const void *src, int len) {
    unsigned int high32 = __builtin_xpu2_load_param(6);
    unsigned long long gmptr = ((unsigned long long)high32) << 32 | (unsigned long long)src;
    __builtin_xpu2_mfence(5);
    __builtin_xpu_gm2lm_v3(dst, (void __global_ptr__ *)gmptr, 0, len);
    __builtin_xpu2_mfence(5);
}

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
            __builtin_memcpy(cursor, &chunkhdr, sizeof(printfChunkHeader));
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

template<int idx>
__device__ long write_data(MagicArgCursor &args_outp, MagicStrCursor &str_outp) {
    return 0;
}

template<int idx>
__device__ long write_data(MagicArgCursor &args_outp, MagicStrCursor &str_outp, const char * const arg) {
    unsigned long long offset = ((long long)(char *)str_outp) - ((long long)(unsigned long long *)args_outp);
    char c;
    long strl = 0;
    long sz = 0;

    if (idx >= PRINTF_MAX_ARG) {
        return 0;
    }

    *args_outp++ = offset;
    sz += sizeof offset;

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
        for (; strl < PRINTF_MAX_STR_LEN - 1; ++strl) {
            memcpy_gm2lm(&c, arg + strl, sizeof(char));
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

    return sz;
}

template<int idx>
__device__ long write_data(MagicArgCursor &args_outp, MagicStrCursor &str_outp, float arg) {
    return write_data<idx, double>(args_outp, str_outp, static_cast<double>(arg));
}

template<int idx, typename T>
__device__ long write_data(MagicArgCursor &args_outp, MagicStrCursor &str_outp, T arg) {
    if (idx >= PRINTF_MAX_ARG) {
        return 0;
    }

    union {
        unsigned long long out;
        T arg;
    } u;

    u.out = 0;
    u.arg = arg;

    *args_outp++ = u.out;
    return sizeof(unsigned long long);
}

template<int idx, typename T, typename ...Args>
__device__ long write_data(MagicArgCursor &args_outp, MagicStrCursor &str_outp, T arg, Args ...tail) {
    long sz = 0;

    if (idx >= PRINTF_MAX_ARG) {
        return 0;
    }

    sz += write_data<idx>(args_outp, str_outp, arg);
    sz += write_data<idx + 1>(args_outp, str_outp, tail...);
    return sz;
}

#if defined(__arch_xpu4__) || defined(__arch_xpu5__)
class LockGuard {
    _global_ptr_ int * const mu;
    bool lock_owned;

public:
    enum {
        UNLOCK = 0,
        LOCKED = 1,
    };

    __device__ __attribute__((always_inline)) LockGuard(_global_ptr_ int *mu)
        : mu{mu}, lock_owned{false} { }

    __device__ __attribute__((always_inline)) ~LockGuard() {
        Unlock();
    }

    void __device__ __attribute__((always_inline)) Lock() {
        while (__builtin_xpu_amoswap(LOCKED, mu) != UNLOCK) {
            __asm __volatile__("nop");
            __asm __volatile__("nop");
            __asm __volatile__("nop");
            __asm __volatile__("nop");
        }
        lock_owned = true;
    }

    void __device__ __attribute__((always_inline)) Unlock() {
        if (lock_owned) {
            __builtin_xpu_amoswap(UNLOCK, mu);
            lock_owned = false;
        }
    }
};
#endif // #if defined(__arch_xpu4__) || defined(__arch_xpu5__)

}   // namespace printf_device_detail

template<
unsigned long long OUTSTREAM = PRINTF_STDOUT_FP,
typename ... Args>
int __xpu_kernel_debug__
__device__ printf(const char* fmt, const Args ... args) {
    const char * volatile phg_buf = "_XPU_KERNEL_PRINTF_BUFFER";
    unsigned char buf[PRINTF_MAX_PACKET_LEN];
    int fmtl = 0;
    char c;
    long arg_count = sizeof...(args);
    printfHeader *hdr = (printfHeader *)buf;
    printfChunkHeader chunk_hdr;
    unsigned long long head;
    unsigned long long tail;
    _global_ptr_ printfHostGlobals *phg = nullptr;
    _global_ptr_ unsigned char *ring_buf = nullptr;
    unsigned long long ring_size;

#if defined(__arch_xpu4__)
    const unsigned int pcie_bit = 52;
#elif defined(__arch_xpu5__)
    const unsigned int pcie_bit = 53;
#else
    const unsigned int pcie_bit = 56;
#endif

    /* copy patched phg pointer from constants */
    memcpy_gm2lm(&phg, (void *)phg_buf, sizeof phg);
    /* phg must be a host pointer */
    if (!((unsigned long long)phg & (1ULL << pcie_bit))) {
        return -1;
    }
    GM2LM(&phg->buf_size, &ring_size, sizeof ring_size);

#if defined(__arch_xpu4__) || defined(__arch_xpu5__)
    _global_ptr_ printfDeviceGlobals *pdg = nullptr;
    GM2LM(&phg->device_priv, (void *)&pdg, sizeof pdg);
    if (pdg == nullptr) {
        return -1;
    }
#endif // #if defined(__arch_xpu4__) || defined(__arch_xpu5__)

    chunk_hdr.magic        = PRINTF_MAGIC;
    chunk_hdr.version      = PRINTF_VERSION;
    chunk_hdr.continuation = 1;
    hdr->header = chunk_hdr;
    hdr->header.continuation = 0; /* first chunk of a packet */
    hdr->argcount = arg_count > PRINTF_MAX_ARG ? PRINTF_MAX_ARG : arg_count;
    hdr->packetlen = 0;
    hdr->coreid = core_id();
    hdr->clusterid = physical_cluster_id();
    hdr->completion_token = 0;
    hdr->outstream = OUTSTREAM;

    GM2LM(&phg->rings[hdr->clusterid][hdr->coreid].buf_ptr, &ring_buf, sizeof ring_buf);
    printf_device_detail::MagicArgCursor args_outp{buf, buf + sizeof(*hdr), chunk_hdr};
    printf_device_detail::MagicStrCursor str_outp{buf, args_outp + hdr->argcount, chunk_hdr};

    for (; fmtl < PRINTF_MAX_STR_LEN - 1; ++fmtl) {
        memcpy_gm2lm(&c, fmt + fmtl, sizeof(char));
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

    hdr->packetlen  = printf_device_detail::write_data<0>(args_outp, str_outp, args...); /* args + strs */
    hdr->packetlen += sizeof(printfHeader) + fmtl;                                /* header + fmt */
    hdr->packetlen  = _ALIGNUP(hdr->packetlen, PRINTF_CHUNK_ALIGN);

    if (hdr->packetlen > ring_size) {
        return -1;
    }

#if defined(__arch_xpu4__) || defined(__arch_xpu5__)
    printf_device_detail::LockGuard lk{&pdg->mutexes[hdr->clusterid][hdr->coreid]};

    lk.Lock();
#endif //#if defined(__arch_xpu4__) || defined(__arch_xpu5__)

    GM2LM(&phg->rings[hdr->clusterid][hdr->coreid].tail, &head, sizeof head);
    hdr->completion_token = head;
    tail = head % ring_size;

    mfence_lm_gm();
    if (ring_size - tail >= hdr->packetlen) {
        LM2GM(buf, ring_buf + tail, hdr->packetlen);
    } else {
        long copyed_size = 0;
        LM2GM(buf, ring_buf + tail, ring_size - tail);
        copyed_size = ring_size - tail;
        LM2GM(buf + copyed_size, ring_buf, hdr->packetlen - copyed_size);
    }
    head += hdr->packetlen;
    mfence_lm();
    LM2GM(&head, &phg->rings[hdr->clusterid][hdr->coreid].tail, sizeof head);

#if defined(__arch_xpu4__) || defined(__arch_xpu5__)
    lk.Unlock();
#endif //#if defined(__arch_xpu4__) || defined(__arch_xpu5__)

    return hdr->argcount;
}

#if !defined(XPU_GEN_SIM_ONLY) && !defined(NDEBUG)
#if __xpu_subarch__ >= 3

namespace assert_device_detail {

__device__ inline void __assert_fail(const char *assertion, const char *file, unsigned int line, const char *func) {
    printf<PRINTF_STDERR_FP>("%s:L%u: %s Assertion `%s' failed.\n", file, line, func, assertion);
    __builtin_trap();
}

}

#define assert_device(expr) \
    (static_cast<bool>(expr) \
     ? void (0) \
     : assert_device_detail::__assert_fail(#expr, __FILE_NAME__, __LINE__, __extension__ __PRETTY_FUNCTION__))
#else   // __xpu_subarch__ >= 3
#define assert_device(expr)
#endif  // __xpu_subarch__ >= 3
#endif  // !XPU_GEN_SIM_ONLY && !NDEBUG

#endif // __arch_xpu4__

#endif // __xpu__

#endif // __XPU_KERNEL_XTDK_IO_XPU4_H
