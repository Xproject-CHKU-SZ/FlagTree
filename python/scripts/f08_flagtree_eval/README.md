# F08：FlagTree PPU 接入与多模型评测（默认关闭）

当前目标是把真实模型的合法缓冲绑定接到 **FlagTree 实际编译的算子**，再检验多模型效果。
这不是新的独立 ATen 优化项目，不是已完成的 MLIR Pass，不是生产服务已接入，也不是完整 F08 验收。

## 当前启动修复 20261013

9 月 29 日的 `18 arguments (15 given)` 已离线定位为本桥接脚本遗漏三个
constexpr：N、BLOCK、APPROXIMATE。Python launcher 要求传入完整源签名；
两处 `compiled[grid]` 现均传 X、Y、numel、block、approximate。
闭包保存标量与编译句柄，不保活编译探针 tensor。不要沿用旧交付中
“wheel 缺 metadata”的根因判断；共享环境尚无此次错误所指向的修复必要性。

新增 `test_kernel_contracts.py` 六项纯软件回归：真实 PPU driver 源码的
18/15 参数复现、首次探针和返回 callable 的完整签名、闭包引用释放、热路径不重编译、
形状/offset 拒绝。测试使用依赖替身，不能作为 PPU 数值或启动成功证据。
本轮应先在服务器核对和应用最小补丁，再以新目录仅重跑 MiniLM gate。
G2 arena/offset 仍未绑定实际执行，不能把此次调用修复写成显存优化收益。

## 范围与门禁

- `run_suite.py`：串行编排，每模型现有 venv 独立进程；MiniLM 必须先通过。之后是 BGE-small-en、BGE-base-zh、BGE-large-en。配置路径来自已有基线，**服务器当前是否存在仍要核查**，不下载/安装/修改共享资源。
- `graph.py`：保留 SentenceTransformer 自身的完整 forward 模块序列，适配成 G1 model-plan；PPU keep-alive 观测真实 storage，调用服务器现有 `inplace_legality.py`，不重造复用算法。
- `kernel.py`：最小 exact GELU 的 Triton/FlagTree PPU lowering；dense fp32、静态形状、单 stream、推理限定。tanh、控制流、未知副作用、tuple tensor 输出、特殊特征等未接入的情况明确拒绝。其他算子保留原路径。
- 强制实际 PPU backend + hgbin，保存 TTIR/TTGIR/LLVM IR/hgbin 与哈希，并真实加载、执行、同步。仅设置环境变量或安装 FlagTree 不算通过。
- 先逐 GELU 比较，再整个导出图比较：ATen vs FlagTree 使用**显式指定**阈值；同一个 FlagTree kernel 的独立输出/同址输出逐位一致，全部节点摘要一致，输入和参数不变。
- gate 是单独诊断进程，不能拿它的全中间量保活观测计性能。测量进程不重跑 keep-all，三臂 setup 都编译同一批 kernel，逐 batch/轮释放输出。
- 三臂 `torch / flagtree-out / flagtree-inplace`，每臂 3 独立进程交错，64 句、warmup 5、measured 30、同步。后两臂是**同一编译 kernel**：其差值才用于隔离 F08 缓冲优化；不能拿 kernel 替换造成的差值当复用收益。
- 峰值 allocated、reserved、预热后基线、全部 samples 分开保存；不删离群值，不自动认定性能/完整适配验收，不把图 forward 对比当 STS 任务精度验收。

性能输入沿用项目 20260923 基线的两个中文句子重复为 64 句；不是“官方完整语料”。新脚本的 forward 不额外施加 encode 的归一化/提示词，**不能直接与旧 encode 表的毫秒值对比**。模型真实 token shape、非 padding 长度、pipeline 模块列入结果。

本机没有 torch/Triton/PPU：软件合同测试与 dry-run 可做，CPU torch 测试应明确跳过；设备正确性与编译收益待服务器验证。服务器须先跑 `test_runtime.py` 的五项实际 CPU 测试与现有 memory_planner 回归。

## 上传（Mac 终端，仅此新目录，不覆盖旧执行器）

```bash
rsync -az --progress --exclude='__pycache__/' \
  '/Users/a86158/Documents/科研/搜广推AI模型适配优化/FlagTree/python/scripts/f08_flagtree_eval/' \
  'zhoulexian@192.168.5.112:/bmcp_lvm_fs/zhoulexian/workspace/FlagTree/python/scripts/f08_flagtree_eval/'

rsync -az --progress \
  '/Users/a86158/Documents/科研/搜广推AI模型适配优化/FlagTree/docs/project-plan/F08-方向与验收边界.md' \
  'zhoulexian@192.168.5.112:/bmcp_lvm_fs/zhoulexian/workspace/FlagTree/docs/project-plan/'
```

容器映射：`/workspace/zhoulexian/FlagTree/python/scripts/f08_flagtree_eval/`。上传前若服务器同名目录已存在，先备份、比较哈希，不能覆盖未知服务器修改。不上传本地旧 `memory_planner`、旧 G03 执行器或清理归档。

## 交给服务器 AI 的执行要求

1. 完整阅读本文件与项目 `docs/project-plan/F08-方向与验收边界.md`。保存旧 `converge-and-scale-20260929` 原始结果，不恢复纯 ATen 的 64x128/长稳任务，不更新日报/Word/组会稿。
2. 校验新目录 MANIFEST；只读确认四模型快照 revision、venv、服务器现有 G03 指纹/设备/顺序护栏及依赖。配置错误只更正到已确认的现有资源，保存 diff；禁止联网下载、改共享 venv、覆盖旧模块。
3. CPU 测试通过后，核查当次物理 PPU 14 权限/预约/空闲；脚本也会在每子进程前查 ppu-smi，并要求 PID→14 与逻辑 cuda:0 映射。权限不能由“空闲”替代；未知输出/PID namespace 无法证明时停止，不跳过检查、不换卡。
4. **只跑 MiniLM gate，阈值先用 0/0**。如果 exact GELU 数学实现与 vendor ATen 不逐位一致，保留编译 IR 和误差结果，报告阻塞；不得自动放宽阈值。非零项目阈值必须先获得确认并明确记录。
5. gate 通过后，使用同一确认阈值，去掉 `--gate-only --limit-models 1` 跑四模型。任何安全/编译/数值失败都保留 failure，不伪造表格，不切回 ATen 后标注为 FlagTree。非首模型缺资源/不支持记录原因。
6. 回传编译器来源/实际调用、三个对照臂、逐模型候选/拒绝明细、原始 samples 与总峰值、MANIFEST 和退出占用。只有当前 PPU 实跑才是 E2/E3；无收益照实报告。先完成这个有限任务，不扩展新框架/大规模参数搜索。

容器内先校验与 CPU 测试（使用 MiniLM 现有 venv，命令不占卡）：

```bash
cd /workspace/zhoulexian/FlagTree/python/scripts/f08_flagtree_eval
sha256sum -c MANIFEST.sha256
/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python -B \
  -m unittest discover -s . -p 'test_*.py' -v
```

人工核查预约与占用后，容器内 **首模型 gate**：

```bash
cd /workspace/zhoulexian/FlagTree
export FLAGTREE_BACKEND=ppu
export CUDA_VISIBLE_DEVICES=14
python3 -B python/scripts/f08_flagtree_eval/run_suite.py \
  --physical-card 14 --confirm-allocation --limit-models 1 --gate-only \
  --atol 0 --rtol 0 \
  --output-dir logs/f08/flagtree-gate-20260929-01
```

输出目录必须新建；已存在时换新编号，不删除旧结果。`--confirm-allocation` 是操作者对预约/权限检查的确认，不是脚本替团队审批。

gate 与数值阈值确认后，完整评测可将上条命令去掉 `--limit-models 1 --gate-only`、保持已确认 `--atol/--rtol` 并改新输出目录。没有 gate 通过报告时，不直接跑全套。

结果入口：`suite-summary.json` → 每模型 `summary.json`；证据在 `gate/{model-plan,bindings,legality,lowering,kernel-probes,compare,result}.json` 和 `gate/compiler/*/gelu.{ttir,ttgir,llir,hgbin}`。9 个测量进程各自保存 compiler、result、preflight、mapping 与日志。错误路径不生成优化收益表。

## 20260929 本地验证记录（不是日报/设备结果）

- 新入口：29 项纯软件合同检查通过，5 项 torch CPU 执行测试因本机没有 torch 而跳过（34 项枚举，不能写成 34 项全通过）。
- 原本地 `python/test/unit/memory_planner` 39 项通过；它不是服务器 185 项套件，未冒充重跑服务器套件。
- 7 个 Python 文件 AST 语法检查与 CLI help 通过；4 模型 dry-run 仅产生 planned_only，6 个输出文件 SHA 校验通过，未上卡。
- 只把旧本地交接目录中未列入 MANIFEST 的 4 个 .pyc 移到 `清理归档/20260929_015137_开发缓存/`，可恢复；旧本地交接包 25 项校验通过。旧源码/冻结包/测量/失败记录均保留。
- 尚未登录上传服务器、未做当前 FlagTree PPU 编译/全图/性能验证。源码是待设备验证的接入候选，不是已经获得优化收益。
