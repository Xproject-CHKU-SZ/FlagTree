/*!\file  xtdk_io.h
 * \brief XPU printf/memdump
*/

#ifndef __XPU_KERNEL_XTDK_IO_H
#define __XPU_KERNEL_XTDK_IO_H

#if defined __xpu__

#include "xpu/kernel/xtdk.h"

// attribute for hardware printf
#define __xpu_kernel_debug__ __attribute__((xpu_kernel_debug)) __attribute__((noinline)) __attribute__((not_tail_called)) __attribute__((disable_tail_calls))

#if defined(__arch_xpu2__)
#define XPU_TOTALCLUSTER 8
#define XPU_TOTALCORE 64
#define XPU_BASE_GM 0x800000000
#define XPU_DEBUG_BASE_BEGIN 0x20000000
#define XPU_DEBUG_BASE_END 0x27FFFFFF

__device__ inline void memcpy_gm2lm(void *dst, const void *src, int len) {
    unsigned int high32 = __builtin_xpu2_load_param(6);
    __builtin_xpu_set_haddr(high32);
    __builtin_xpu2_mfence(5);
    __builtin_xpu_gm2lm(dst, src, 0, len);
    __builtin_xpu2_mfence(5);
}
#endif  // #if defined(__arch_xpu2__)

enum class DebugRet:unsigned char{
    LENERROR = 255,
    PRINTF = 1,
    DUMP = 2,
};

//  0 0 0             0                 0               00                    0 
// reserved unsigned(0)/signed(1) HEX(0)/DEC(1) HH(00)/H(01)/(10)/L(11) fix(0)/float(1)
enum class DumpFormat:unsigned char{
    // unsigned int32, HEX
    X = 0b00000100,
    // signed int32, DEC
    D = 0b00011100,
    // unsigned int32, DEC
    U = 0b00001100,
    // unsigned int16, HEX
    HX = 0b00000010,
    // signed int16, DEC
    HD = 0b00011010,
    // unsigned int16, DEC
    HU = 0b00001010,
    // unsigned int8, HEX (default)
    HHX = 0b00000000,
    // signed int8, DEC
    HHD = 0b00011000,
    // unsigned int8, DEC
    HHU = 0b00001000,
    // unsigned int64, HEX
    LX = 0b00000110,
    // signed int64, DEC
    LD = 0b00011110,
    // unsigned int64, DEC
    LU = 0b00001110,
    // single-precision float, DEC
    F = 0b00011101,
    // double-precision float, DEC
    LF = 0b00011111,
};

enum class DumpAddrSpace:unsigned char{
    LOCAL = 0x0,
    GLOBAL = 0x1,
    SHARED = 0x2,
    GROUP_SHARED = 0x3,
};

namespace printf_sim_detail {

static constexpr int DTYPE_32 = 1;
static constexpr int DTYPE_64 = 4;

struct data_entry {
    uint32_t value;
    int dtype;
};

template<typename T>
struct argument_entry_count {
    static_assert(sizeof(T) <= sizeof(uint64_t), "printf argument is larger than 64 bits");
    static constexpr int value = sizeof(T) <= sizeof(uint32_t) ? 1 : 2;
};

template<typename ... Args>
struct argument_list_entry_count;

template<>
struct argument_list_entry_count<> {
    static constexpr int value = 0;
};

template<typename T, typename ... Args>
struct argument_list_entry_count<T, Args...> {
    static constexpr int value = argument_entry_count<T>::value +
                                 argument_list_entry_count<Args...>::value;
};

template<int num, int idx, typename T>
void __device__ fill_arg(data_entry (&params)[num], const T& value) {
    static_assert(idx + argument_entry_count<T>::value <= num, "printf params overflow");
    uint64_t bits = 0;
    __builtin_memcpy(&bits, &value, sizeof(T));
    if (sizeof(T) <= sizeof(uint32_t)) {
        params[idx] = data_entry{static_cast<uint32_t>(bits), DTYPE_32};
    } else {
        params[idx] = data_entry{static_cast<uint32_t>(bits), DTYPE_64};
        params[idx + 1] = data_entry{static_cast<uint32_t>(bits >> 32), DTYPE_64};
    }
}

template<int num, int idx>
void __device__ fill_args(data_entry (&params)[num]) {}

template<int num, int idx, typename T, typename ... Args>
void __device__ fill_args(data_entry (&params)[num], const T& head, const Args& ... tail) {
    fill_arg<num, idx>(params, head);
    fill_args<num, idx + argument_entry_count<T>::value>(params, tail...);
}

}   // namespace printf_sim_detail

namespace printf_device_detail {

#if defined(__arch_xpu2__)
template<int num, int idx>
__device__ void fill_printf_data(uint64_t (&params)[num]) {}

template<int num, int idx, typename T>
__device__ void fill_printf_data(uint64_t (&params)[num], const T head) {
    static_assert(idx < num, "printf params overflow");
    uint64_t casted = *reinterpret_cast<const uint64_t*>(&head);
    params[idx] = casted;
}

template<int num, int idx, typename T, typename ... Args>
__device__ void fill_printf_data(uint64_t (&params)[num], const T& head, const Args& ... tail) {
    fill_printf_data<num, idx>(params, head);
    fill_printf_data<num, idx + 1>(params, tail...);
}

#endif // #if defined(__arch_xpu2__)

}   // namespace printf_device_detail

#ifdef XPU_GEN_SIM_ONLY
template<typename ... Args>
int __device__ printf(const char* fmt, const Args ... args) {
    constexpr int data_size = printf_sim_detail::argument_list_entry_count<Args...>::value;
    printf_sim_detail::data_entry params[data_size + 1];
    params[0] = printf_sim_detail::data_entry{0, data_size};
    printf_sim_detail::fill_args<data_size + 1, 1>(params, args...);
    __asm__("vsyscall %0, %1, %2"::"r"(0), "r"(fmt), "r"(params));
    return 0;
}
#elif defined(__arch_xpu2__)
/**
 * \brief XPU printf
 * \see example/kunlun2/kernel_debug
 */
template<typename ... Args>
int __device__ printf(const char* fmt, const Args ... args) {
    int total_cluster = XPU_TOTALCLUSTER;
    int total_core = XPU_TOTALCORE;
    unsigned int base_begin = XPU_DEBUG_BASE_BEGIN;
    unsigned int base_end = XPU_DEBUG_BASE_END;
    unsigned long long base_gm = XPU_BASE_GM;
    int ret = 0;
    int error_len = 0;
    unsigned int mem_trans_len = 0;
    unsigned long long gmptr;
    
    int block_id = physical_cluster_id() * total_core + core_id();
    unsigned int block_size = (base_end - base_begin) / (total_cluster * total_core);
    unsigned int base = base_begin + block_id * block_size;

    char core_error = 0;
    mem_trans_len = sizeof(char);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    GM2LM((_global_ptr_ const void*)gmptr, &core_error, mem_trans_len);
    if (core_error != 0) {
        ret = -1;
        return ret;
    }
    
    const unsigned int fmt_len_max = 128;
    const unsigned int arg_size_max = 16;

    unsigned int arg_size = sizeof...(args);
    unsigned int fmt_len = 0;
    char fmt_buffer[fmt_len_max];
    mem_trans_len = sizeof(char);
    for (; fmt_len < fmt_len_max; fmt_len++) {
        memcpy_gm2lm(fmt_buffer + fmt_len, fmt + fmt_len, mem_trans_len);
        if (fmt_buffer[fmt_len] == '\0') {
            break;
        }
    }
    if (fmt_len == fmt_len_max) {
        fmt_buffer[fmt_len - 1] = '\0';
        ret = -1;
    } else {
        fmt_len++;
    }

    // printf/dump/lenerror, fmt_len, fmt, data_count, data
    unsigned int current_printf_size = sizeof(char) + sizeof(int) + fmt_len * sizeof(char) + sizeof(int) + arg_size * sizeof(uint64_t);

    unsigned int latest_debug_size = 0;
    mem_trans_len = sizeof(int);
    gmptr = base_gm | (unsigned long long)(base + sizeof(char));
    mfence_lm_gm();
    GM2LM((_global_ptr_ const void*)gmptr, &latest_debug_size, mem_trans_len);
    unsigned remained_size = block_size - latest_debug_size - sizeof(int) - sizeof(char) - 2 * sizeof(int);
    if (current_printf_size > remained_size) {
        ret = -1;
        error_len = -1;
    }

    unsigned int total_debug_size = 0;
    if (error_len == 0) {
        total_debug_size = latest_debug_size + current_printf_size;
    } else {
        core_error = -1;
        mem_trans_len = sizeof(char);
        gmptr = base_gm | (unsigned long long)base;
        mfence_lm_gm();
        LM2GM(&core_error, (_global_ptr_ void*)gmptr, mem_trans_len);
        //                                     debug_ret, remained_size, current_printf_size
        total_debug_size = latest_debug_size + sizeof(char) + 2 * sizeof(int);
    }
    mem_trans_len = sizeof(int);
    gmptr = base_gm | (unsigned long long)(base + sizeof(char));
    mfence_lm_gm();
    LM2GM(&total_debug_size, (_global_ptr_ void*)gmptr, mem_trans_len);    
    
    base = base + sizeof(char) + sizeof(int);
    base = base + latest_debug_size;

    DebugRet debug_ret = DebugRet::LENERROR;
    if (error_len == 0) {
        debug_ret = debug_ret = DebugRet::PRINTF;
    }

    mem_trans_len = sizeof(char);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    LM2GM(&debug_ret, (__global_ptr__ void*)gmptr, mem_trans_len);
    base = base + mem_trans_len;

    if (error_len != 0) {
        mem_trans_len = sizeof(int);
        gmptr = base_gm | (unsigned long long)base;
        mfence_lm_gm();
        LM2GM(&remained_size, (__global_ptr__ void*)gmptr, mem_trans_len);
        base = base + mem_trans_len;

        mem_trans_len = sizeof(int);
        gmptr = base_gm | (unsigned long long)base;
        mfence_lm_gm();
        LM2GM(&current_printf_size, (__global_ptr__ void*)gmptr, mem_trans_len);
        base = base + mem_trans_len;
        return ret;
    }

    mem_trans_len = sizeof(int);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    LM2GM(&fmt_len, (__global_ptr__ void*)gmptr, mem_trans_len);
    base = base + mem_trans_len;

    mem_trans_len = fmt_len * sizeof(char);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    LM2GM(fmt_buffer, (__global_ptr__ void*)gmptr, mem_trans_len);
    base = base + mem_trans_len;

    mem_trans_len = sizeof(int);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    LM2GM(&arg_size, (__global_ptr__ void*)gmptr, mem_trans_len);
    base = base + mem_trans_len;

    if (arg_size != 0) {
        uint64_t printf_data_buffer[arg_size_max];
        printf_device_detail::fill_printf_data<arg_size_max, 0>(printf_data_buffer, args...);
        gmptr = base_gm | (unsigned long long)base;
        mem_trans_len = arg_size * sizeof(uint64_t);
        mfence_lm_gm();
        LM2GM(printf_data_buffer, (__global_ptr__ void*)gmptr, mem_trans_len);
    }

    return ret;
}
#endif  //#ifdef XPU_GEN_SIM_ONLY, #elif defined(__arch_xpu2__)

#ifdef __arch_xpu1__
enum class DataType {
    kInt32 = 0,
    kUInt32,
    kUInt16,
    kInt16,
    kUInt8,
    kInt8,
    kFloat32,
    kFloat16,
    kBfloat16,
};

enum class XPUSramID {
    kRegister = 0,
    kLocalMem = 1,
    kSharedMem = 2,
    kGlobalMem = 3,
    kOffset = 8
};

enum class CDNNSramID {
    L2_1 = 0,
    L2_0 = 1,
    L1D = 2,
    L1W = 3,
    L1E = 4,
    L2E = 5,
    L2R = 6,
    kOffset = 8,
};

static __device__ void print_cdnn(CDNNSramID sram, void *ptr, int size, DataType data_type) {
    int desc = (static_cast<int>(sram) << static_cast<int>(CDNNSramID::kOffset)) | static_cast<int>(data_type);
    __asm__("print_cdnn %0, %1, %2"::"r"(size), "r"(ptr), "r"(desc));
}
static __device__ void print_local(void *src, int size, DataType data_type) {
    int desc = (static_cast<int>(XPUSramID::kLocalMem) << static_cast<int>(XPUSramID::kOffset)) | static_cast<int>(data_type);
    __asm__("print %0, %1, %2"::"r"(size), "r"(src), "r"(desc));
}
static __device__ void print_shared(void *src, int size, DataType data_type) {
    int desc = (static_cast<int>(XPUSramID::kSharedMem) << static_cast<int>(XPUSramID::kOffset)) | static_cast<int>(data_type);
    __asm__("print %0, %1, %2"::"r"(size), "r"(src), "r"(desc));
}
static __device__ void print_global(void *src, int size, DataType data_type) {
    int desc = (static_cast<int>(XPUSramID::kGlobalMem) << static_cast<int>(XPUSramID::kOffset)) | static_cast<int>(data_type);
    __asm__("print %0, %1, %2"::"r"(size), "r"(src), "r"(desc));
}
static __device__ void print_int(int val) {
    int desc = (static_cast<int>(XPUSramID::kRegister) << static_cast<int>(XPUSramID::kOffset)) | static_cast<int>(DataType::kInt32);
    __asm__("print %0, %1, %2"::"r"(sizeof(int)), "r"(val), "r"(desc));
}
static __device__ void print_hex(int val) {
    int desc = (static_cast<int>(XPUSramID::kRegister) << static_cast<int>(XPUSramID::kOffset)) | static_cast<int>(DataType::kUInt32);
    __asm__("print %0, %1, %2"::"r"(sizeof(int)), "r"(val), "r"(desc));
}
static __device__ void print_float(float val) {
    int desc = (static_cast<int>(XPUSramID::kRegister) << static_cast<int>(XPUSramID::kOffset)) | static_cast<int>(DataType::kFloat32);
    __asm__("print %0, %1, %2"::"r"(sizeof(int)), "r"(val), "r"(desc));
}

#define xassert(e) if (!(e)) { __asm__("assert"); }

static __device__ void print_cdnn_int8_2Darray(CDNNSramID sram, int8_t *ptr, int nrows) {
    for (int i = 0; i < nrows; i++) {
        print_cdnn(sram, ptr, 32, DataType::kInt8);
        ptr += 32;
    }
}

static __device__ void print_cdnn_int16_2Darray(CDNNSramID sram, int16_t *ptr, int nrows) {
    for (int i = 0; i < nrows; i++) {
        print_cdnn(sram, ptr, 32, DataType::kInt16);
        ptr += 16;
    }
}

static __device__ void print_cdnn_fp32_2Darray(CDNNSramID sram, float *ptr, int nrows) {
    for (int i = 0; i < nrows; i++) {
        print_cdnn(sram, ptr, 64, DataType::kFloat32);
        ptr += 16;
    }
}

#endif // __arch_xpu1__

#ifdef __xpu_on_host__
static int __device__ memdump(unsigned int dump_len, const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) { return 0; }
#elif defined(__discard_addrspace_attribute__)
static int __device__ memdump(unsigned int dump_len, const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) { return 0; }
#elif defined(__arch_xpu2__)
static inline unsigned int __device__
memdump_s(unsigned int dump_len, unsigned long long mem_addr = 0, DumpFormat dump_format = DumpFormat::HHX, DumpAddrSpace dump_addr_space = DumpAddrSpace::LOCAL) {
    int total_cluster = XPU_TOTALCLUSTER;
    int total_core = XPU_TOTALCORE;
    unsigned int base_begin = XPU_DEBUG_BASE_BEGIN;
    unsigned int base_end = XPU_DEBUG_BASE_END;
    unsigned long long base_gm = XPU_BASE_GM;
    int error_len = 0;
    unsigned int mem_trans_len = 0;
    unsigned long long gmptr;
    int block_id = physical_cluster_id() * total_core + core_id();
    unsigned int block_size = (base_end - base_begin) / (total_cluster * total_core);
    unsigned int base = base_begin + block_id * block_size;

    char core_error = 0;
    mem_trans_len = sizeof(char);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    GM2LM((_global_ptr_ const void*)gmptr, &core_error, mem_trans_len);
    if (core_error != 0) {
        return 0;
    }

    // printf/dump/lenerror, cluster_id core_id, dump addr space, dump addr, dump format, dump len, dump data
    unsigned int current_dump_size = sizeof(char) + 2 * sizeof(int) + sizeof(char) + sizeof(long long) + sizeof(char) + sizeof(int) + dump_len;

    unsigned int latest_debug_size = 0;
    mem_trans_len = sizeof(int);
    gmptr = base_gm | (unsigned long long)(base + sizeof(char));
    mfence_lm_gm();
    GM2LM((_global_ptr_ const void*)gmptr, &latest_debug_size, mem_trans_len);
    unsigned remained_size = block_size - latest_debug_size - sizeof(int) - sizeof(char) - 2 * sizeof(int);
    if (current_dump_size > remained_size) {
        error_len = -1;
    }

    unsigned int total_debug_size = 0;
    if (error_len == 0) {
        total_debug_size = latest_debug_size + current_dump_size;
    } else {
        core_error = -1;
        mem_trans_len = sizeof(char);
        gmptr = base_gm | (unsigned long long)base;
        mfence_lm_gm();
        LM2GM(&core_error, (_global_ptr_ void*)gmptr, mem_trans_len);
        //                                     debug_ret, remained_size, current_dump_size
        total_debug_size = latest_debug_size + sizeof(char) + 2 * sizeof(int);
    }
    mem_trans_len = sizeof(int);
    gmptr = base_gm | (unsigned long long)(base + sizeof(char));
    mfence_lm_gm();
    LM2GM(&total_debug_size, (_global_ptr_ void*)gmptr, mem_trans_len);

    base = base + sizeof(char) + sizeof(int);
    base = base + latest_debug_size;

    DebugRet debug_ret = DebugRet::LENERROR;
    if (error_len == 0) {
        debug_ret = debug_ret = DebugRet::DUMP;
    }
    mem_trans_len = sizeof(char);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    LM2GM(&debug_ret, (__global_ptr__ void*)gmptr, mem_trans_len);
    base = base + mem_trans_len;

    if (error_len != 0) {
        mem_trans_len = sizeof(int);
        gmptr = base_gm | (unsigned long long)base;
        mfence_lm_gm();
        LM2GM(&remained_size, (__global_ptr__ void*)gmptr, mem_trans_len);
        base = base + mem_trans_len;

        mem_trans_len = sizeof(int);
        gmptr = base_gm | (unsigned long long)base;
        mfence_lm_gm();
        LM2GM(&current_dump_size, (__global_ptr__ void*)gmptr, mem_trans_len);
        base = base + mem_trans_len;

        return 0;
    }

    unsigned char dump_message[22];
    *reinterpret_cast<int*>(&dump_message[0]) = cluster_id();
    *reinterpret_cast<int*>(&dump_message[4]) = core_id();
    dump_message[8] = (unsigned char)dump_addr_space;
    *reinterpret_cast<unsigned long long*>(&dump_message[9]) = mem_addr;
    dump_message[17] = (unsigned char)dump_format;
    *reinterpret_cast<unsigned int*>(&dump_message[18]) = dump_len;

    mem_trans_len = 22 * sizeof(char);
    gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    LM2GM(dump_message, (__global_ptr__ void*)gmptr, mem_trans_len);
    base = base + mem_trans_len;

    return base;
}

/**
 * \brief XPU local memory memdump
 * \see example/kunlun2/kernel_debug
 */
static int __xpu_kernel_debug__
__device__ memdump(unsigned int dump_len, const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) {
    unsigned long long base_gm = XPU_BASE_GM;
    unsigned int base = memdump_s(dump_len, (unsigned long long)mem_addr, dump_format, DumpAddrSpace::LOCAL);

    if (base == 0) {
        return -1;
    }
    
    unsigned long long gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    LM2GM(mem_addr, (__global_ptr__ void*)gmptr, dump_len);

    return 0;
}

/**
 * \brief XPU shared memory memdump
 * \see example/kunlun2/kernel_debug
 */
static int __xpu_kernel_debug__
__device__ memdump(unsigned int dump_len, __shared_ptr__ const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) {
    unsigned long long base_gm = XPU_BASE_GM;
    unsigned int base = memdump_s(dump_len, (unsigned long long)mem_addr, dump_format, DumpAddrSpace::SHARED);

    if (base == 0) {
        return -1;
    }

    unsigned long long gmptr = base_gm | (unsigned long long)base;
    mfence();
    SM2GM(mem_addr, (__global_ptr__ void*)gmptr, dump_len);

    return 0;
}

/**
 * \brief XPU group shared memory memdump
 * \see example/kunlun2/kernel_debug
 */
static int __xpu_kernel_debug__
__device__ memdump(unsigned int dump_len, __group_shared_ptr__ const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) {
    unsigned long long base_gm = XPU_BASE_GM;
    unsigned int base = memdump_s(dump_len, (unsigned long long)mem_addr, dump_format, DumpAddrSpace::GROUP_SHARED);

    if (base == 0) {
        return -1;
    }

    unsigned long long gmptr = base_gm | (unsigned long long)base;
    mfence_lm_gm();
    GSM2GM(mem_addr, (__global_ptr__ void*)gmptr, dump_len);

    return 0;
}

/**
 * \brief XPU global memory memdump
 * \see example/kunlun2/kernel_debug
 */
static int __xpu_kernel_debug__
__device__ memdump(unsigned int dump_len, __global_ptr__ const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) {
    unsigned long long base_gm = XPU_BASE_GM;
    unsigned int base = memdump_s(dump_len, (unsigned long long)mem_addr, dump_format, DumpAddrSpace::GLOBAL);

    if (base == 0) {
        return -1;
    }

    unsigned long long gmptr = base_gm | (unsigned long long)base;
    char tmp_lm[dump_len];
    mfence();
    GM2LM((__global_ptr__ const void*)mem_addr, tmp_lm, dump_len);
    LM2GM(tmp_lm, (__global_ptr__ void*)gmptr, dump_len);

    return 0;
}
#else
static int __device__ memdump(unsigned int dump_len, const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) { return 0; }
static int __device__ memdump(unsigned int dump_len, __shared_ptr__ const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) { return 0; }
static int __device__ memdump(unsigned int dump_len, __group_shared_ptr__ const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) { return 0; }
static int __device__ memdump(unsigned int dump_len, __global_ptr__ const void* mem_addr, DumpFormat dump_format = DumpFormat::HHX) { return 0; }
#endif  //#ifdef __xpu_on_host__, #elif defined(__arch_xpu2__)

#ifndef __ASSERT_FUNCTION
#define __ASSERT_FUNCTION	__extension__ __PRETTY_FUNCTION__
#endif // #ifndef __ASSERT_FUNCTION

#if defined(XPU_GEN_SIM_ONLY) || defined(NDEBUG)
#define assert_device(expr)
#endif // XPU_GEN_SIM_ONLY || NDEBUG

#ifndef XPU_GEN_SIM_ONLY
#include "xpu/kernel/xtdk_io_xpu3.h"
#include "xpu/kernel/xtdk_io_xpu4.h"
#endif

#elif defined __XCN__
#include "xcn/kernel/xtdk_io.h"
#endif

#endif // __XPU_KERNEL_XTDK_IO_H
