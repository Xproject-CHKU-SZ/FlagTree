/*!\file  xtdk_int.h
 * \brief XPU 整型
*/

#ifndef __XPU_KERNEL_XTDK_INT_H
#define __XPU_KERNEL_XTDK_INT_H

#if defined(__xpu_free_addrspace__)
#include <stdint.h>
#elif __xpu_subarch__ >= 3
#include <stdint.h>
#else
typedef signed long long int int64_t;
typedef unsigned long long int uint64_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
typedef signed short int16_t;
typedef unsigned short uint16_t;
typedef signed char int8_t;
typedef unsigned char uint8_t;
#endif

#if __cplusplus <= 199711L
#define STATIC_ASSERT(COND,MSG) typedef char static_assertion_##MSG[(COND)?1:-1]
STATIC_ASSERT(sizeof(int64_t) == 8, int64_t_should_be_64_bit);
STATIC_ASSERT(sizeof(uint64_t) == 8, uint64_t_should_be_64_bit);
STATIC_ASSERT(sizeof(int32_t) == 4, int32_t_should_be_32_bit);
STATIC_ASSERT(sizeof(uint32_t) == 4, uint32_t_should_be_32_bit);
STATIC_ASSERT(sizeof(int16_t) == 2, int16_t_should_be_16_bit);
STATIC_ASSERT(sizeof(uint16_t) == 2, uint16_t_should_be_16_bit);
STATIC_ASSERT(sizeof(int8_t) == 1, int8_t_should_be_8_bit);
STATIC_ASSERT(sizeof(uint8_t) == 1, uint8_t_should_be_8_bit);
#else
static_assert(sizeof(int64_t) == 8, "int64_t should be 64-bit");
static_assert(sizeof(uint64_t) == 8, "uint64_t should be 64-bit");
static_assert(sizeof(int32_t) == 4, "int32_t should be 32-bit");
static_assert(sizeof(uint32_t) == 4, "uint32_t should be 32-bit");
static_assert(sizeof(int16_t) == 2, "int16_t should be 16-bit");
static_assert(sizeof(uint16_t) == 2, "uint16_t should be 16-bit");
static_assert(sizeof(int8_t) == 1, "int8_t should be 8-bit");
static_assert(sizeof(uint8_t) == 1, "uint8_t should be 8-bit");
#endif  // __cplusplus <= 199711L

#endif  // __XPU_KERNEL_XTDK_INT_H