"""Write a human-readable report from independently recomputed comparison data."""
from pathlib import Path
import csv,json
R=Path(__file__).resolve().parents[1]
s=json.loads((R/'comparison.json').read_text())
m=s['metrics']
main=[('默认融合 / Inductor','rtx4090_joint_default_vs_inductor'),
      ('选参融合 / Inductor','rtx4090_joint_tuned_vs_inductor'),
      ('默认融合 / eager','rtx4090_joint_default_vs_eager'),
      ('选参融合 / eager','rtx4090_joint_tuned_vs_eager'),
      ('Inductor / eager','rtx4090_joint_inductor_vs_eager')]
checks=[c for cs in s['checks'].values() for c in cs]
error_changes=[x for c in checks for x in c['max_abs_error_changes']]
tuning_changes=[x for c in checks for x in c['tuning_config_changes']]
same=all(c['same_case_statuses'] and not c['input_parameter_tolerance_differences'] for c in checks)
sameenv=all(not c['environment_differences'] for c in checks)
lines=['# RTX 4090 复测对照（2026-10-26）','',
       f'正确性判定、失败集合、输入/参数哈希与容差：{"全部与 2026-10-20 历史记录一致" if same else "存在差异，详见 comparison.json"}。',
       f'PyTorch/Triton 版本、编译器/驱动/native 库哈希、基准脚本哈希、CPU 亲和性、计时协议及适用的 Inductor 源码哈希：{"全部一致" if sameenv else "存在差异，详见 comparison.json"}。','',
       '## 报告主要引用的同进程结果','',
       '下表是两轮 117 项尝试中共同有效的 100 项。先取每轮 7 个 batch 的中位数，再取两轮中位数，最后计算逐例加速比的几何平均。', '',
       '| 比较口径 | 历史值 | 本次值 | 相对变化 | 有效项 |',
       '|---|---:|---:|---:|---:|']
for title,k in main:
 d=m[k];lines.append(f'| {title} | {d["old_gm"]:.4f}× | {d["new_gm"]:.4f}× | {d["change_pct"]:+.2f}% | {d["matched_cases"]} |')
lines += ['', '变化率 = 本次加速比 / 历史加速比 − 1。整体接近不表示每个单例耗时完全相同；本次未做统计显著性判定。', '',
          '## 通过数和失败定位','', '| 测试批次 | 本次通过/尝试（两轮） | 历史通过/尝试（两轮） | 失败集合一致 |', '|---|---|---|---|']
for name,cs in s['checks'].items():
 title={'rtx4090_eager':'历史 eager 对照','rtx4090_candidate_independent':'独立进程融合','rtx4090_inductor':'独立进程 Inductor','rtx4090_joint':'同进程四路线对照'}.get(name,name)
 lines.append('| '+title+' | '+'、'.join(f'{c["passed"]}/117' for c in cs)+' | '+'、'.join(f'{c["historical_passed"]}/117' for c in cs)+' | '+('是' if all(c['same_case_statuses'] for c in cs) else '否')+' |')
lines += ['', 'Inductor 的 17 项数值不通过用例与历史记录逐例相同；失败发生阶段也单独核对，没有将编译失败替代成历史数值失败。失败项未进入性能聚合。融合单独测试的四轮均为 117/117 通过。', '',
          '## 其他批次（分别统计）','', '| 比较口径 | 历史值 | 本次值 | 相对变化 |', '|---|---:|---:|---:|']
extra=[('历史 eager 对照：默认融合','rtx4090_eager_default_vs_eager'),('历史 eager 对照：选参融合','rtx4090_eager_tuned_vs_eager'),
       ('独立进程：默认融合 / Inductor','rtx4090_independent_default_vs_inductor'),('独立进程：选参融合 / Inductor','rtx4090_independent_tuned_vs_inductor')]
for title,k in extra:
 d=m[k];lines.append(f'| {title} | {d["old_gm"]:.4f}× | {d["new_gm"]:.4f}× | {d["change_pct"]:+.2f}% |')
for device,d in s['supplementary'].items():
 lines += ['', f'额外完整运行独立扩展基准（{device}）：两轮通过数 '+ '、'.join(f'{c["passed"]}/90' for c in d['counts'])+f'；有效融合项 {d["common_valid"]}；相对 eager 几何平均 {d["default_vs_eager_gm"]:.4f}×。此脚本的输入构造和调用方式与 117 项基准不同，未混入报告口径。']
with (R/'per_case_comparison.csv').open() as f:rows=list(csv.DictReader(f))
mainrows=[r for r in rows if r['metric']=='rtx4090_joint_tuned_vs_inductor']
worst=sorted(mainrows,key=lambda r:abs(float(r['ratio_change_pct'])),reverse=True)[:10]
lines += ['', '## 同进程选参加速比变化最大的 10 个用例','', '| 模板 | 精度 | M×N | 历史 | 本次 | 变化 |', '|---|---|---|---:|---:|---:|']
for r in worst:
 lines.append(f'| {r["kind"]} | {r["dtype"]} | {r["M"]}×{r["N"]} | {float(r["old_ratio"]):.4f}× | {float(r["new_ratio"]):.4f}× | {float(r["ratio_change_pct"]):+.2f}% |')
lines += ['', '完整逐例绝对耗时及加速比见 `per_case_comparison.csv`；所有正确性、环境差异与失败记录见 `comparison.json`。超过 10% 的单例变化仅作为调查标记，不是用户指定的验收门槛。', '',
          '## 完整性与限制','',
          f'- 捕获前选参每次重新评测，累计 {len(tuning_changes)} 个“轮次×用例”选择了不同配置；{len(error_changes)} 个“轮次×用例×路线”的最大绝对误差与历史值不同，但均通过原容差。正确性判定一致不等于逐位输出完全一致。',
          f'- 已核验 {sum(c["monitor_samples_verified"] for c in checks)} 次正式测试设备采样，未发现外来进程与本次 GPU 测试重叠。',
          '- 8 轮正式 117 项测试，另有 2 轮 13 项烟雾测试和 2 轮 90 项独立扩展测试。每个进程使用独立编译缓存，未修改恢复源码、数值容差或性能计时逻辑。',
          '- 设备为原 RTX 4090（UUID GPU-da47d8df-895f-3898-85ec-271176ad3d82）。性能包含 Python 调用、输出分配和设备执行，不能解释为纯 GPU 内核加速比。',
          '- P800：1 号卡首个烟雾用例在输入准备阶段阻塞，本次进程已停止，未取得有效性能样本。原 5 号卡与其余健康卡仍被占用；按用户要求等待健康卡。本报告不声称 P800 已复现。',
          '- `evidence/rtx4090/` 保存原始逐例结果、生成代码、退出记录和设备采样；归档 SHA-256 与逐文件清单用于核验回收完整性。设备编译缓存、大型运行依赖、远端部署脚本及标准输出/错误日志未纳入此快照。','']
(R/'REPORT.md').write_text('\n'.join(lines),encoding='utf-8')
print('Wrote',R/'REPORT.md')
