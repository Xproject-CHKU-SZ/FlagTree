# Qwen rotary 缓冲消除离线可行性

仅分析固定 v4 证据，不执行模型、不选卡、不 import torch/triton、不改图或 kernel。
输入固定 Qwen/Qwen3-Embedding-0.6B / revision 97b0c614… / B32/S24 / FP32 / cache-off。

## 实际做什么

1. 只读校验已完成的 v4 包（固定 MANIFEST SHA，939 项）。
2. AST 解析导出图的参数表示，不使用 eval；检查 slice/neg/cat 的完整消费者和别名。
3. 分别保留实际 dtype/shape/stride/offset/device/底层容量。跨检查点指针不作为生命周期 ID。
4. 在内存中的分析副本里反映已有 28 个 MLP Mul 实测同址关系；placeholder 按原执行器保留。
5. 提出“独立输出 indexed Mul”假设：删去 rotate-half 的两个 slice、neg 和 cat 节点，
   在原 Mul 位置读取原输入和已有 scale；输出大小不变，不做 rotary 原地写入。
6. 复用 **固定 SHA 的原 G1 schema/liveness** 重算完整图；源输入 storage 延续到新 Mul。
   分别比较仅 28 个峰值路径和全部 56 个 rotary 路径。两个非 rotary cat 保留。
7. 输出图 storage 静态峰值、源 storage 最后事件、未改节点已有高水位及条件性限制。

这不是另一个内存规划器或已实现的融合；报告的 proposal kernel 名只是分析副本标签，
分析副本不导出为运行时计划，不授权接入执行器。
既有 schema 用递归 DFS 检查环；针对约 2000 节点的完整串行图，仅在本进程 G1 调用期间
调整 Python 递归深度并恢复，所有 schema/环检查照常执行，不改共享实现。

## 服务器容器内复算（纯 CPU）

从仓库根目录运行。不设置 F08_TEST_PLANNER_DIR；两项 G1 哈希必须匹配，不能学习现场新值。

```bash
cd /workspace/zhoulexian/FlagTree
ENTRY=python/scripts/f08_qwen_rotary_feasibility_20261024
sha256sum -c "$ENTRY/MANIFEST.sha256"
python3 -B -m unittest discover -s "$ENTRY" -p 'test_*.py' -v
python3 -B "$ENTRY/audit_rotary.py" \
  --bundle /workspace/zhoulexian/Docs/f08_qwen_peak_diagnostic_20261024-01 \
  --planner-dir python/flagtree/memory_planner \
  --output-dir logs/f08/qwen-rotary-feasibility-20261024-01
```

27 项纯软件测试（包括实际调用固定 G1 的生命周期重算），无 torch/设备依赖、无跳过。
输出目录若已存在换新编号，禁止删旧结果。代码只读旧证据；结果新建两个文件。
服务器两项 G1 源码若不同，停止并回报，不覆盖也不重算期望哈希。

## Mac 本地复现

本地仓库的 liveness.py 有既有阅读版注释，原始源 SHA 与冻结版不同；
因此明确读取本地已校验的旧 Qwen 包中的同版本 G1，而非修改现场文件绕过身份检查：

```bash
ENTRY=FlagTree/python/scripts/f08_qwen_rotary_feasibility_20261024
G1='参考资料/f08_qwen_g1_tuple_20261023-01/server-evidence/final-source/memory_planner'
F08_ROTARY_G1_DIR="$G1" python3 -B -m unittest discover -s "$ENTRY" -p 'test_*.py' -v
python3 -B "$ENTRY/audit_rotary.py" \
  --bundle '参考资料/f08_qwen_peak_diagnostic_20261024-01' \
  --planner-dir "$G1" \
  --output-dir '任务交付/F08_Qwen_rotary可行性_20261024/results/local-02'
```

`F08_ROTARY_G1_DIR` 只选择测试依赖目录，仍强制两个固定 SHA；不是运行时身份绕过。

## 结果边界

- 静态 graph storage 与实际 allocated/reserved 分开，不把未知差额称为 workspace。
- 未改节点高水位若保持不变，只能给出条件性上限，不是实际预测或保证收益。
- 候选不做源码生成、不改执行顺序事实、不保证没有后端临时量或精度差异。
- 后续实际 FlagTree 实现仍须处理非连续源 stride、scale 广播、FP32 算术顺序，
  并重新进行 G1/G03、严格 0/0、真实编译/启动与匹配正常 A/B。
- 不扩模型、不跑 STS/longrun、不更新日报、不改共享环境或冻结包。
