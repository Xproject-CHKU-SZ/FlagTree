# KL3 DMA scheduling

`xpu-dma-opt` runs a structural LLVM function pass after XPU LLVM lowering and
before the LLVM 19 adapter/code generator. It does not replace arithmetic or
vendor libraries. Both Inductor-generated and directly compiled Triton kernels
use this compiler stage. The executable hash and `xpu_dma_pipeline` option are
part of the code-generation cache identity.

Modes: `0` disables this stage, `1` applies dependency-proven wait scheduling,
and `2` also enables eligible cross-iteration prefetch (default). Scheduled IR
and pass statistics are saved as `.dma.llir` and `.dma.json` in the kernel cache.

The pass:

- Groups adjacent GM-to-LM transfers only for distinct underlying allocations,
  with no intervening memory access; one common completion wait remains.
- Moves a vector-loop store wait to its unique exit only when ScalarEvolution
  proves that consecutive iterations access disjoint LM slices.
- Recognizes flat dense packets with a common bounded index and one output.
  Single-input packets use two buffers. Two-input packets up to 1024 bytes use
  three buffers to overlap output transfer with the successor's compute. Other
  eligible packets use two buffers, subject to a 7168-byte allocation budget
  including known local arithmetic scratch.
- Supports periodic read-only bias operands when their global allocation is
  disjoint from the output and the next packet uses exactly the same bias
  address. Keeps bias in a single buffer. If memory-inplace lowering had used
  that buffer for output, proves read-before-write and disjoint vector-loop
  slices before reusing a consumed flat input buffer instead. Unknown stores,
  non-affine slices, and mutable/overlapping bias retain ordinary loads.
- Accounts for local lifetime and masked-vector scratch intrinsics, and the
  exact memory-free scalar exp intrinsic, without moving their arithmetic or
  internal fences. This does not replace the vendor sigmoid implementation.
- Checks global overlap, address wraparound, loop bounds, packet lengths and
  progress across all 64 cores before prefetch. The ready state carries the
  actual prefetch decision. Without a proven lookahead, the output wait stays
  before the next ordinary input read. Every exit drains outstanding outputs.

Unknown memory effects, volatile/atomic operations, incompatible indices, or
unaccounted local buffers prevent pipelining. SDNN and non-KL3 modules are not
transformed. These conditions deliberately do not cover every reduction or
library call.

Public LLVM 22 interprets XTDK kernel convention 124 as an AMDGPU convention.
The reader normalizes kernel definitions while parsing/verifying and restores
the XTDK convention on output. Runtime code generation still uses the installed
XPU toolchain.

The backend CMake build compiles and packages the tool. A standalone build is
also supported with `LLVM_DIR` pointing to the matching LLVM development tree.
Run `test/test_dma_pipeline.py` with `XPU_DMA_OPT` set to the built executable.
Device verification must additionally exercise tails, exact and partial aliases,
repeated grid indices, and complete model output contracts.
