# [graph-fusion] Keep P800 bf16 pointwise tiles at the heuristic base width

## Problem

The graph-fusion resource path compiles native Inductor kernels per resource. On P800, bf16
pointwise regions lose output coverage as soon as a candidate config's `XBLOCK` exceeds the
heuristic base tile: only `1024 / XBLOCK` of the output is written, the rest keeps uninitialized
memory (bf16 frequently `0x7F80` = `+inf`). Coordinate-descent tuning makes this worse because it
benchmarks for speed only and prefers the largest tile.

Details, reproduction and controls are in the companion issue.

## Change

`python/triton/experimental/graph_fusion/_resource_codegen.py`:

1. `_MAX_XBLOCK` module-level guard. `compile_region` sets it to `1024` when any input is bf16 and
   restores the previous value afterwards (plain global, because the tuner runs on a compile
   worker thread where a ContextVar would not be visible).
2. `ResourceHeuristics.__getattr__` drops tuner configs whose `XBLOCK` exceeds the guard, so a
   heuristic list that already contains 2048/4096 cannot start from a broken tile.
3. `generated_resource` caps `CoordescTuner.get_neighbour_values` on `XBLOCK`/`YBLOCK`/`ZBLOCK`
   while the guard is set, so the search cannot walk into a tile it cannot compile. The patch is
   scoped to the context and restored in `finally`.
4. `compile_region` disables `coordinate_descent_tuning` for bf16 inputs
   (`FLAGTREE_ALLOW_BF16_CD=1` keeps an escape hatch for debugging).

No arithmetic, masking, tolerance or launch parameter is changed for other dtypes.

## Verification (P800 7, 2048×2048 broadcast multiply)

| configuration | elements equal to reference | non-finite |
|---|---:|---:|
| before, tuned tile 4096 (bf16) | 1,049,504 / 4,194,304 (25.0%) | 61,349 |
| before, tuned tile 2048 (bf16) | 2,098,090 / 4,194,304 (50.0%) | 0 |
| after, capped at 1024 (bf16) | 4,194,304 / 4,194,304 (100%) | 0 |
| f32, 4096 | 100% | 0 |
| f16, 4096 | 100% | 0 |

The Mul+Sum routes that rely on this path keep their earlier numbers:

- `cluster_sdnn_at_1` (cluster multiply + tle.dsa reduction): 103 µs, max_abs 3.8e-5 (f32).
- `sdnn_cluster_at_1` (tle.dsa multiply + cluster reduction): 88.6 µs, max_abs 3.1e-5 (f32).

## Scope and limitations

- This is a guard, not the upstream fix. The real defect is the silent fallback to a smaller
  launcher while the grid keeps the failed config's shape; that belongs to the Inductor launcher
  and the XPU tile budget, and is written up in the issue.
- The guard is applied only when a bf16 input tensor is present; other dtypes keep the full
  search space.
- If a future SDK makes bf16 4096 compile, the cap can be raised once the coverage check above
  returns 100% at that tile.

## How to apply

```bash
git apply bf16-xblock-guard.patch
```

The patch applies to `python/triton/experimental/graph_fusion/_resource_codegen.py` on top of
the current `zhaoweiming` branch.
