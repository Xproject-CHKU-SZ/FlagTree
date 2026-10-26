# F06：2026-10-20 可复现版本

本目录恢复的是 **2026-10-20 工作报告对应的冻结实现**。源码来自当日留存的 source 快照，并与原哈希清单逐项核对；不包含当前仍在进行中的后续开发。

2026-10-26 使用恢复代码在原 RTX 4090 上重新完成 8 轮正式测试（每轮 117 项）、2 轮烟雾测试、2 轮扩展测试（每轮 90 项）。这次复测只验证 10 月 20 日版本，不改变版本日期。

## 目录内容

```text
source/python/triton/experimental/graph_fusion/  融合实现（10 个文件）
source/python/triton/flagtune/                   配套 FlagTune（24 个文件）
source/python/test/unit/runtime/                 原测试（2 个文件）
source/python/benchmarks/                        基准及兼容辅助脚本（6 个文件）
source/third_party/xpu/backend/                  P800 compiler/driver Python 层（2 个文件）
run_payload.py                                  本进程模块加载入口
tools/verify_snapshot.py                        源码和归档完整性校验
tools/compare_results.py                        离线重算历史与新数据
tools/write_report.py                           从核对结果生成报告
docs/CROSS_BACKEND.md                           跨后端差异分析入口
REPORT.md / comparison.json                     复测结论及逐轮核对
per_case_comparison.csv                         逐例耗时和加速比差异
evidence/rtx4090/                               2026-10-26 实测记录
evidence/historical/                            2026-10-20 历史记录
SOURCE_MANIFEST.json / MANIFEST.json             SHA-256 清单
SNAPSHOT.json                                   版本、环境和范围说明
```

`source/` 的 44 个 Python 文件逐字节保留。启动器来自原测试工具，只合并了 original/Inductor 两种基线的跳过加载开关，便于使用同一入口；融合数学和测试逻辑未改动。

## 已确认的结果

| 4090 同进程口径，100 项共同有效样本 | 2026-10-20 | 2026-10-26 | 变化 |
|---|---:|---:|---:|
| 默认融合相对 Inductor | 4.3472× | 4.3624× | +0.35% |
| 选参融合相对 Inductor | 4.4400× | 4.4570× | +0.38% |

融合单独测试均为 117/117 通过；Inductor 两轮均为 100/117，17 个数值不通过用例与历史记录完全相同。输入、参数哈希、容差、软件版本及关键代码哈希一致。所有 100 项有效样本仍快于 Inductor。捕获前选参可能选到不同配置，不承诺误差数值和耗时逐位相同。

P800 的 2026-10-20 结果保留在历史证据中；2026-10-26 的新测试因无健康空闲卡尚未完成，不能把历史结果写成新一轮通过。完整分析见 [REPORT.md](REPORT.md)。

## 不依赖 GPU 的核对

以下命令在本目录执行，仅使用 Python 标准库，不依赖原作者的绝对路径：

```bash
python3 tools/verify_snapshot.py
python3 tools/compare_results.py --device rtx4090
python3 tools/write_report.py
```

比较程序会重算 7 次采样的中位数、两轮中位数和逐例几何平均，同时校验输入/参数/容差、失败阶段、实际 fused 模式、生成代码哈希和设备占用采样。源码、历史数据和生成报告均有包内来源。

## 在 RTX 4090 上运行

使用具备 PyTorch `2.11.0+cu130`、Triton `3.6.0`、`numpy` 和 `pytest` 的 Linux Python 环境，以及兼容的 NVIDIA 驱动。此目录是源码归档，不包含 PyTorch/Triton 原生编译库或驱动。版本与库哈希详见原始 `results.json`。

启动器将本目录的 `graph_fusion` 和 `flagtune` 加入已安装 Triton 的模块查找路径，不写入安装目录。运行前确认选中 GPU 空闲；为与报告一致，固定单 CPU 线程和 CPU 亲和性，使用独立缓存。

先运行烟雾测试：

```bash
python run_payload.py python/benchmarks/benchmark_current_speedup.py \
  --route candidate --smoke --output runs/candidate-smoke
```

完整同进程两轮：

```bash
TRITON_CACHE_DIR="$PWD/runs/joint-a/cache/triton" \
TORCHINDUCTOR_CACHE_DIR="$PWD/runs/joint-a/cache/inductor" \
OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 \
TORCHINDUCTOR_COMPILE_THREADS=1 \
taskset -c 0 python run_payload.py python/benchmarks/benchmark_joint_compare.py \
  --route joint --repeat-index 0 --output runs/joint-a/evidence

TRITON_CACHE_DIR="$PWD/runs/joint-b/cache/triton" \
TORCHINDUCTOR_CACHE_DIR="$PWD/runs/joint-b/cache/inductor" \
OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 \
TORCHINDUCTOR_COMPILE_THREADS=1 \
taskset -c 0 python run_payload.py python/benchmarks/benchmark_joint_compare.py \
  --route joint --repeat-index 1 --output runs/joint-b/evidence
```

CPU 0 是历史设置，须在本机可用；若改用其他 CPU，应记录环境变化。脚本保留 RTX 4090 / 计算能力 8.9 检查。原 Inductor 的 17 项不通过会使脚本返回 1；应检查 `results.json` 是否为 `status=completed`、117 项全部尝试，以及失败是否仍为相同的数值问题，不能把任意非零退出都视为预期结果。

其他入口仍完整保留：`benchmark_inductor_compare.py` 提供独立进程 candidate/inductor 对照，`benchmark_current_speedup.py` 提供 eager/default/tuned 对照，`benchmark_graph_fusion_f06.py` 提供独立扩展 90 项基准。Inductor 独立路线使用 `F06_INDUCTOR_BASELINE=1` 跳过融合模块加载。

原单元测试：

```bash
python run_payload.py python/test/unit/runtime/test_graph_fusion.py -q
python run_payload.py python/test/unit/runtime/test_graph_fusion_f06.py -q
```

## P800 环境边界

P800 使用定制 PyTorch `2.5.1+cu118`、Triton `3.6.0` / XPU 后端以及配套 SDK。`third_party/xpu/backend/` 仅恢复 Python 层；完整原生库、SDK、LLVM 工具和原始基线依赖未嵌入 Git。默认 NVIDIA Triton 无法代替此环境。

原始基线依赖归档的 SHA-256 为 `3ddad73d0124321977c533b582ffdd230aa1a43f2057a61a50f5d54932f2f2a7`；当时每次原始基线进程均核对了 1194 项文件。没有这些依赖时，不应宣称已复现 P800 的原始包对照。
