# Qwen 28 条 Q-rotary：真实 FlagTree indexed Mul 原型

## 本轮范围

用户已确认局部原型范围。仅 Qwen/Qwen3-Embedding-0.6B、revision 97b0c614…、
64 句、B32/S24、FP32、cache-off。不是全模型 FlagTree，不是通用 MLIR 融合 Pass。
本地已写 kernel/执行器/门禁/A-B 入口，但本机没有 torch/triton/PPU，**未验证设备运行或收益**。
本地 35 项测试中 29 通过、6 项真实 Torch CPU 测试跳过；服务器须 35/35，无跳过。

每层只选择 Q 分支，共 28 条：cat_1→mul_9、cat_3→mul_22、…、cat_55→mul_360。
K 分支和两个非 rotary cat 不改。已验证的 28 个 MLP Mul 同址优化在两臂都保持。

```text
基线：x → slice/neg/cat → mul(scale) → add
候选：x ──────────────→ FlagTree indexed Mul(scale) → add
```

新 kernel 直接按原 x 的 stride 读取后半/前半，前半输出取负后再乘已有 scale，
写入独立 dense 输出。原输入 `[32,16,24,128]`，stride `[49152,128,2048,1]`；
scale `[1,1,24,128]` 沿 batch/head 广播。**不覆盖 x、不重新算 sin/cos、不隐式 copy/contiguous**。
不融合后续 add、不改 mask/pooling/max/SiLU/attention，不加 arena、不扩模型。

## 代码分工

| 文件 | 作用 |
|---|---|
| rotary_kernel.py | 真正 `@triton.jit` indexed Mul，编译到 PPU hgbin，保存四阶段并真实启动 |
| rotary_execution.py | 两臂共用引用计数框架；候选跳过 112 个中间节点，在原 Mul 位置读取 x/scale |
| rotary_contracts.py | 索引/布局/容量/别名校验、派生 G1 计划、完整 3+3 实验汇总 |
| rotary_gate.py | 新鲜 G1/G03、28 条路径匹配、6 组微探针、真实中间量和完整模型比较 |
| rotary_worker.py | 物理/逻辑卡映射、门禁或单臂正常测量；编译/精度/计时分离 |
| run_rotary.py | 自动选许可空闲 PPU，整组固定；gate 后交错 3+3 进程；保留所有原始样本 |
| ROTARY-PINS.json | 冻结的模型/图/输入/输出/既有 MLP 编译身份及 28 条路径/布局 |
| DEPENDENCIES.json | 41 项既有依赖身份；读取不覆盖，共享源码不同则停止 |

## 内存与正确性合同

- 两臂同一框架、同一原始节点相对顺序；候选只省去两个 slice/neg/cat。
  重新计算消费者计数，原输入存活到 indexed Mul；不沿用原 cat 后释放时点。
- 参数/输入 placeholder 保持常驻；max.dim tuple 的实际 Python 所有权及 getitem 原路径保留。
- args/kwargs/dest/result 均限于单节点函数；计时中不保活中间量、不 clone、不采集逐节点指针。
- 用原 G1 对派生计划重新校验。用身份完整的本次 PPU 布局证据，在原计划和派生计划中
  都重新确认旧 MLP Mul 的 G03 合法性；rotary 本身不申请原地覆盖许可。
- kernel 返回目标指针；目标 storage 与两个输入不同。门禁记录两 batch 的 28 个新输出和
  旧 MLP 的同址关系，并验证参数/输入摘要不变。
- 微探针含 D=2/6/10/128、N<256/非256整除、非连续输入、batch/head/token 广播、
  正偏移 view，以及 ±0 和小数值。每条真实中间量和完整图均要求 0/0 且输出 bytes digest 相等。
- 比较全部存续节点摘要，不能只看最终输出；删除节点不再要求候选生成该中间量。
- 失败保留完整现场并停止，不放宽精度、不用 ATen reference 或 copy 充当候选 fallback。

## 服务器 CPU 测试（先做）

```bash
cd /workspace/zhoulexian/FlagTree
ENTRY=python/scripts/f08_qwen_rotary_kernel_20261024
QWEN=/data/ppu-benchmark/venvs/.venv_py3_12_Qwen__Qwen3-Embedding-0.6B/bin/python
sha256sum -c "$ENTRY/MANIFEST.sha256"
F08_REQUIRE_TORCH=1 "$QWEN" -B -m unittest discover -s "$ENTRY" -p 'test_*.py' -v
```

预期 35/35，无跳过。测试只用 CPU，其中 6 项使用 Torch 验证执行器/释放/tuple 路径；
测试里的 Python reference/copy 只为 CPU plumbing，不是 FlagTree kernel 或设备替代证据。
无需重跑旧 27 项离线分析、105 项 v4 全量或历史模型测试。

## 一条设备执行命令（CPU 测试通过、冻结后）

先按团队许可/预约确认可用范围。用户已授权在许可资源内自动选空闲卡；不能仅凭
“空闲”认定预约许可。已知预约卡通过 --exclude-cards 排除，团队给定范围可加 --allowed-cards。
--confirm-allocation 表示操作者已完成这项核对；不改变 18 MiB / 无他人 PID / 0% 合同。

```bash
"$QWEN" -B "$ENTRY/run_rotary.py" \
  --prior-bundle /workspace/zhoulexian/Docs/f08_qwen_peak_diagnostic_20261024-01 \
  --output-dir /workspace/zhoulexian/FlagTree/logs/f08/qwen-rotary-kernel-20261024-01 \
  --physical-card auto --idle-mib-max 18 --confirm-allocation
```

可先加 --gate-only 只执行门禁；默认 gate 通过才自动做六进程 A/B，不因“尚未有收益”停在审计。
无设备 dry-run 使用 --dry-run，不读 PPU 状态、不会 import torch/triton；
共享依赖校验在 Mac dry-run 延后（本地已有阅读版注释，不能拿它覆盖服务器冻结实现）。
新输出目录若存在换编号，不能删除旧结果。

## 测量口径

- `mlp-inplace`：相同新框架，保留旧 MLP 优化，rotary 走原算子路径。
- `mlp-inplace+rotary`：仅额外启用 28 条 indexed Mul。
- 顺序：baseline/candidate、candidate/baseline、baseline/candidate，各独立进程。
- 两臂 setup 都预编译/启动相同的 MLP 和 rotary kernel 集合，校验相同编译身份；
  **基线的正常模型图不调用 rotary kernel**。不把 setup 启动当成基线的测量覆盖。
- 冷启动、精度、编译均不计入正常计时；预热 5 次后记录 allocated/reserved 并重置峰值，
  测量 30 次，每次处理 2 个 B32 batch 共64句，轮前/轮后同步，不逐节点同步。
- 峰值在测量后、输出哈希前读取；输出/protected digest 在计时外检查。
- 报告总峰值 allocated/reserved、原始 samples、跨进程 p50/p95 中位数和吞吐。
  不删离群值，缺臂或身份不同不汇总，不混用旧不同框架/屏障结果。
- 新增收益仅为本轮 candidate 对 baseline；不能累加旧 Mul 局部9MiB或静态3MiB。
  静态条件性上限约2.93MiB不是收益保证；任何负收益照实保留。

## 交付与边界

输出包含 gate、G1/G03/派生计划、tuple绑定、微探针/28节点探针/两batch比较、
TTIR/TTGIR/LLIR/hgbin、六份原始样本、baseline-index、源码/依赖身份、选卡/退出记录。
组内固定一张卡；超时只终止本任务进程组，使用已验证的旧 launcher，不清共享缓存。
本轮不跑 STS/A100/长稳，不改共享 wheel/venv，不更新日报，不 commit/push。
先记录结果，再确认下一轮方向；不因本次成功就自动扩全部 56 条或其他模型。
