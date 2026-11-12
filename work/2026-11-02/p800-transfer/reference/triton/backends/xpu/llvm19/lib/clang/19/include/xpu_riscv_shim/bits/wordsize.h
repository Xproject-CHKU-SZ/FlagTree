/*===----- xpu_riscv_shim/bits/wordsize.h - Shim for XPU on RISC-V hosts -===
 *
 * Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
 * See https://llvm.org/LICENSE.txt for license information.
 * SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
 *
 *===-----------------------------------------------------------------------===
 *
 * When XPU device code is compiled on a RISC-V host, the compilation uses
 * the host triple (riscv64-linux-gnu) so RISCVTargetInfo defines
 * __riscv_xlen=64, but the XPU frontend sets __SIZEOF_POINTER__ to 4
 * (XPU4/5/6 devices use 32-bit pointers). The system
 * /usr/include/riscv64-linux-gnu/bits/wordsize.h has no include guard and
 * hard-checks __riscv_xlen == __SIZEOF_POINTER__ * 8, aborting with
 *   "unsupported ABI"  or  "rv32i-based targets are not supported".
 *
 * XPUToolChain adds this directory as an -internal-isystem entry so that
 * `#include <bits/wordsize.h>` resolves here instead of to the system
 * header. This shim only defines the macros that downstream libc / libstdc++
 * headers expect from wordsize.h; it does not perform any ABI checks.
 * Values match the host RISC-V64 word size (which is what the affected
 * libc-facing types like `long`, `size_t`, `off_t` will actually be laid
 * out as when consumed by the host side of the same TU).
 */

#define __WORDSIZE                  64
#define __WORDSIZE_TIME64_COMPAT32   1
#define __SYSCALL_WORDSIZE          64
