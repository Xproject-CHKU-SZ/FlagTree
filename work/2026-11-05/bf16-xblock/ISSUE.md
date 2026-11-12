# [XPU] P800 bf16 pointwise kernels silently under-write when a config exceeds the base tile

## Summary

On P800 (`arch == 3`), a bf16 pointwise kernel compiled through Inductor can write only a
fraction of its output and leave the rest uninitialized. The fraction is exactly
`1024 / XBLOCK`. Uninitialized bf16 memory frequently reads back as `0x7F80` (±inf), so the
visible symptom is scattered `inf`/`NaN` in an otherwise plausible tensor. f32 and f16 kernels
of the same shape and tile size are unaffected.

## Environment

- FlagTree `0.7.1a1+xpu3.6`, P800 OAM (`arch=3`, `warp_size=1`), single card.
- torch 2.9.0 + `torch_xmlir` 1.0.0.1 (XMLIR P800 3.7.0), XTDK 3.9.0.1, XRE 5.37.0.0.
- Problem reproduced with the shipped wheel and with a locally rebuilt core; it is not
  related to any local patch.

## Reproduction

Graph: `out = a * b` with `a[2048, 2048]` bf16 and `b[2048]` bf16 (broadcast multiply).

1. Compile the region with the native Inductor path (`max_autotune`, coordinate descent on).
2. Pin the pointwise config's `XBLOCK` to 1024 / 2048 / 3072 / 4096 (the coordinate-descent
   neighbour search does this on its own and picks 4096 as fastest).
3. Compare the result against `a * b` elementwise.

Measured (2048×2048 bf16, cold caches, `num_warps=8`, `num_stages=1`):

| requested XBLOCK | elements equal to `a*b` | fraction | non-finite |
|---:|---:|---:|---:|
| 1024 | 4,194,304 / 4,194,304 | 100% | 0 |
| 2048 | 2,098,090 / 4,194,304 | 50.0% | 0 |
| 3072 | 1,398,515 / 4,194,304 | 33.3% | 105 |
| 4096 | 1,049,504 / 4,194,304 | 25.0% | 61,349 |

Controls:

| case | result |
|---|---|
| f16, XBLOCK 4096 | 100% correct, 0 non-finite |
| f16, XBLOCK 16384 | 100% correct, 0 non-finite |
| f32, XBLOCK 4096 | 100% correct, 0 non-finite |
| same bf16 math hand-written as a raw Triton kernel (no Inductor), XBLOCK 4096 | correct |
| same bf16 kernel source dumped by Inductor, loaded and launched standalone | correct |

The last two rows show the arithmetic, the masks and the cast chain are fine; the defect is in
the compile/launch path, not in the generated math.

## Root cause

1. The generated wrapper decorates the kernel with
   `@triton_heuristics.pointwise(size_hints={'x': 4194304}, ...)` — no explicit `configs=` — so
   the heuristic base tile is 1024 and the grid function is derived from that base.
2. A candidate config with `XBLOCK > 1024` fails to compile for bf16. The failure surfaces as
   `OutOfResources: out of resource: uni_sram` in the precompile worker.
3. The launcher silently falls back to the base-tile launcher (1024 elements per program) while
   the launch grid is still computed from the requested `XBLOCK`.
4. Coverage is therefore `grid * 1024 = numel * 1024 / XBLOCK`; the remaining elements keep
   whatever the allocator returned. In bf16 that is often `0x7F80`, i.e. `+inf`.
5. f16/f32 compile the same 4096 tile successfully, the larger launcher exists, and no fallback
   happens — which is why the bug looked bf16-specific.

The most likely reason bf16 fails where f16 does not is the bf16 `f32 -> bf16` narrowing path
in the same kernel consuming more of the per-core SRAM budget at the same element count, so the
tile no longer fits.

## Expected behaviour

- A config that fails to compile must not be silently replaced by a smaller one while the grid
  keeps the failed config's shape; either recompute the grid from the launcher actually used, or
  fail the kernel.
- If the bf16 tile genuinely exceeds `uni_sram`, selecting the next smaller tile (and the matching
  grid) is fine — but the write coverage must stay complete.

## Suggested fixes (in order of preference)

1. **Launcher:** bind grid and launcher to the same config; on fallback recompute the grid.
2. **Frontend:** when a bf16 pointwise config fails with `OutOfResources: uni_sram`, retry with a
   smaller tile and adjust the grid, instead of reusing the fallback launcher.
3. **Backend (nice to have):** make the bf16 narrowing fit the same tile as f16 so 4096 works.

## Workaround in use

Cap bf16 `XBLOCK` at the heuristic base tile (1024) and disable coordinate-descent search for
bf16 inputs; verified 100% correct with zero non-finite values on the same shape. Patch attached
in the companion PR description.

## Artifacts

- failing kernel dump: `triton_unk_fused_0.{ttir,llir,xpubin,elf}` (IR text was empty in this
  build; `.xpubin`/`.elf` retained).
- measurement scripts: `dbg_partial.py` (coverage), `dbg_bf16_force_cold.py` (cold-cache forced
  config), `dbg_bf16_detail.py` (element-level inspection).
