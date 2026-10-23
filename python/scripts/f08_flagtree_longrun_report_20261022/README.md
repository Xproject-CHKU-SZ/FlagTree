# FlagTree 五模型长稳结果汇总

本轮继续F08原方向：保留已有G01/G03与真实FlagTree GELU原地优化，完成G05有限连续运行观察。
不修改已完成五模型短程的源码、基线或冻结包，不新增ATen优化，不重试FlagGems-on。

现有模型执行器已经支持 --longrun。新工具只读原始长稳记录，生成可汇报的
LONGRUN.md 与 longrun-summary.json，避免把仅含短程性能的RESULTS.md误认为长稳结论。

## 新增功能

- 五模型各out/inplace两臂，检查1000轮、11个指定检查点和输出摘要。
- 将case/gate/编译器/协议/设备身份与本轮匹配的短程基线比较。
- 校验baseline-index文件哈希；保留源码输入哈希，不修改原始目录。
- 分列末尾allocated相对预热增量、检查点allocated跨度、reserved跨度。
- allocated有正增长或波动则标记待复核，不自动叫“泄漏”；reserved变化不直接当泄漏。
- 失败、缺臂、缺模型、缺检查点、输出不一致、基线篡改均不生成成功报告。

## 执行（个人服务器容器）

```bash
cd /workspace/zhoulexian/FlagTree
MINI='/data/ppu-benchmark/venvs/.venv_py3_12_sentence-transformers__all-MiniLM-L6-v2/bin/python'
REPORT='python/scripts/f08_flagtree_longrun_report_20261022'
sha256sum -c "$REPORT/MANIFEST.sha256"
"$MINI" -B -m unittest discover -s "$REPORT" -p 'test_longrun_report.py' -v
```

22项纯CPU报告合同测试通过后，直接沿用已验证执行器开展真实长稳：

```bash
ENTRY='python/scripts/f08_flagtree_model_compare_20261022'
sha256sum -c "$ENTRY/MANIFEST.sha256"
"$MINI" -B "$ENTRY/run_models.py" \
  --output-dir logs/f08/model-compare-longrun-20261022-01 \
  --physical-card auto --longrun
```

这是全新目录下的新一组：每模型先fresh gate + 三臂短程，再对out/inplace各1000轮。
不是把旧gate挪到别的卡，也不把旧短程与新设备计算收益。
默认五模型全部完成时共5个gate、45个短程测量进程、10个长稳进程。
--exclude-cards 排除已知预约/禁用卡，仍固定一张安全空闲许可卡完成整组。
保留现有18MiB上限；不自动加阈值，不干扰他人进程或共享缓存。

执行器exit=0后汇总（输入raw不改，输出必须是另一全新目录）：

```bash
"$MINI" -B "$REPORT/summarize_longrun.py" \
  --run-dir logs/f08/model-compare-longrun-20261022-01 \
  --output-dir /workspace/zhoulexian/Docs/f08_model_longrun_20261022-01
```

## 结果口径

长稳检查点含额外校验输出的工作。长稳memory/timings不能当作纯前向峰值或加速数据，
优化前后性能仍读新raw中的短程summary。报告只表示有限固定输入下观察到的内存/正确性，
不自动确认无越界、无泄漏、全F08或E4验收，也不替代STS/A100任务精度。

有增长或异常先保留现场并定位，不继续扩大算子；无增长则结合模型算子画像选择下一候选。
运行中不改测试、源码或模型配置；输出目录已存在就换新编号。未要求时不更新日报。

CPU报告测试没有GPU执行，也不是实际长稳通过证据。
