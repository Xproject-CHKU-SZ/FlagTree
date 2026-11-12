# Mul+Sum 大矩阵：SDNN 与 cluster 的选择（含 #1458 修复后复测）

单卡（P800 7 号卡）串行，36 个 Mul+Sum 用例（18 小 + 18 大），无污染（`contaminated=0`）。
运行时为 `flagtree-0.7.1a1+xpu3.6`，替换为按 `#1458` 修复重编的 `libtriton.so`
（sha256 `001cbc11…`）与 `compiler.py`（sha256 `9d92b7b5…`），其余文件不变。

## 修复生效性

`repro_rank1_wrap.py`，period 7/17/32：`mismatch_count=0`、`gate_passed=true`
（修复前同一复现为 12/2/0）。split 路线 `cluster_sdnn_at_1` 由“输出错误”变为 `finite_validated`。

## 结论：选 cluster

大矩阵 18 例（GPU µs，CUDA Graph 重放）：

| 用例 | dtype | M×N | cluster（整图） | cluster→SDNN | SDNN×256→cluster |
|---|---|---|---:|---:|---:|
| 200 | f32 | 2048×2048 | 156.6 | 2251.2（14.4×慢） | 3351.8 |
| 203 | f16 | 2048×2048 | 159.2 | 2251.5（14.1×慢） | 编译失败 |
| 206 | bf16 | 2048×2048 | 312.3 | 精度失败 | 4033.1 |
| 199 | f32 | 512×1024 | 53.6 | 307.8（5.7×慢） | 433.0 |
| 198 | f32 | 128×1024 | 19.1 | 81.9（4.3×慢） | 121.0 |

- `cluster→SDNN` 在全部 16 个可测大例上慢 3.1–14.4×；bf16 2048×2048 直接精度失败。
- `SDNN×256→cluster` 慢 3.5–130×，f16 大例与 bf16 2048×2048 精度失败。
- SDNN 乘法拆分（`sdnn_sdnn_*`、`sdnn_cluster_*`）全部在建图阶段被自身前置条件拒绝
  （“guard row must span complete 64-byte cache lines” / “parallel RNE requires contiguous non-overlapping rows”）。

小矩阵 18 例：`cluster` 最优，`sdnn_parallel` 慢 1.1–1.7×，`sdnn_dual` 慢 1.1–1.5×
（bf16 32×256 达 3.4×）。

## 与历史 1.90× 的差异

历史比值来自**独立行求和算子**：2048×2048 f32 下 SDNN 25.4 µs vs cluster 48.3 µs。
在拆分管线里，SDNN 归约被限定在认证过的小 tile（`sdnn {XBLOCK:1, warps:8}`），
同一归约实测约 2.1 ms，是历史独立测量的 ~80×。因此 1.90× 的优势在当前管线不可达；
若要利用，需要放开 SDNN 归约 tile，而历史记录中多行配置在三种 dtype 上出过错。
历史数据本身也显示 8192×8192 时 SDNN 已反向落后（990 vs 458 µs）。

## 其他观察

- bf16 的原生 Inductor 在 128×1024、512×1024、2048×2048 及全部小例上未过原精度阈值。
- eager（torch）在 2048×2048 为 35.6 µs，比任何融合路线都快约 4×。

## 产物

- 36 例结果：`/data2/zhaoweiming/f06-mulsum-plans-20261105/results/case-*-plans-fix*-a1/`
- 修复部署暂存与回滚：`.../sdnn-fix/{libtriton.so.new, compiler.py.new, libtriton.so.orig, compiler.py.orig}`
- 本地汇总与脚本：`work/2026-11-05/build/{deploy_core.sh, run_after_deploy.sh, aggregate.py, analyze_large.py}`
