"""Render the completed, validated P800 measurements for review."""
from pathlib import Path
import html
import json

ROOT = Path(__file__).resolve().parent
main = json.loads((ROOT/'analysis.json').read_text())
split = json.loads((ROOT/'split-analysis.json').read_text())
cleanup = json.loads((ROOT/'cleanup-status.json').read_text())
assert main['completed_records'] == 1296 and len(main['cases']) == 216
assert split['records'] == 72 and cleanup['status'] == 'completed'
labels = {
    'matmul_bias':'MatMul + Bias', 'matmul_bias_relu':'MatMul + Bias + ReLU',
    'matmul_bias_gelu_exact':'MatMul + Bias + GELU(exact)',
    'matmul_bias_gelu_tanh':'MatMul + Bias + GELU(tanh)', 'matmul_bias_silu':'MatMul + Bias + SiLU',
    'add_layernorm':'Add + LayerNorm', 'add_layernorm_weight':'Add + LayerNorm(weight)',
    'add_layernorm_bias':'Add + LayerNorm(bias)', 'add_layernorm_affine':'Add + LayerNorm(affine)',
    'add_softmax':'Add + Softmax', 'mul_sum':'Mul + Sum', 'mul_sum_keepdim':'Mul + Sum(keepdim)'}
dtype = {'float32':'FP32','float16':'FP16','bfloat16':'BF16'}
def link(name, label=None):
    return f'[{label or name}]({ROOT/name})'
def number(x):
    return f'{x:.3f}' if x is not None else '—'
def status(entry):
    statuses = entry['statuses']
    if 'unsupported_resource' in statuses:
        return '当前模板不支持'
    if 'numerical_failure' in statuses:
        return '精度失败'
    return '编译失败'
def value(entry, metric):
    return number(entry[metric]) if entry['valid_pair'] else status(entry)

lines = ['# P800 F06：SDNN / cluster 实测报告', '',
    '2026-11-02。主测试完成：216 个用例 × 3 条路径 × 2 轮 = **1296 条记录**；另完成 12 个代表性拆分用例的 72 条对照记录。精度阈值沿用原用例。', '',
    '**远端清理已完成**：所有结果先保存本地并逐文件校验，再停止专用运行环境、删除 `/home/zhaoweiming/f06-resources-20261102`。清理后确认目录和运行环境进程均不存在，8 张 P800 空闲。', '',
    '## 适用范围与选择建议', '',
    '- **SDNN：优先用于小矩阵 FP32/FP16 的 MatMul+Bias、ReLU、精确 GELU 融合。** 本次三个小尺寸上的 GPU 加速比为 1.83–3.25×。BF16 不能沿用这个结论。',
    '- **大矩阵精确 GELU 仍适合 SDNN 单内核。** 2048³ FP16/FP32 分别比 eager 快约 1.51×/1.47×。同规模 Bias/ReLU 的 SDNN 路径则慢于 eager。',
    '- **cluster 更适合本次很小规模的 Mul+Sum，以及替代慢速 SDNN tanh/SiLU 后处理。** 16×128 的 FP32/FP16 Mul+Sum 两轮均快于 eager；更宽或更大的归约通常失去收益。',
    '- **当前 Softmax/LayerNorm 生成路径优先保留 eager。** cluster 多数能通过精度，但明显慢；SDNN 在这些组合上存在编译或链接障碍。',
    '- **大矩阵 BF16 暂不建议启用当前 SDNN MatMul 融合。** 15 个大矩阵 BF16 MatMul 用例全部在至少一项精度检查中失败；cluster 的 2048×2048 BF16 带 weight/bias/affine LayerNorm 也失败。失败数据不进入加速比。', '',
    '这些结论针对本次 F06 实现、原生 Inductor 候选和固定 SDK。它们描述当前可用路径与实测收益，不能作为 P800 硬件性能上限。', '',
    '## 覆盖与公平计时', '',
    '12 种组合；FP32/FP16/BF16；小矩阵 (M,N,K)=(16,128,64)、(32,256,64)、(64,1024,64)；大矩阵 (128,1024,128)、(512,1024,1024)、(2048,2048,2048)。非 MatMul 组合使用对应 M、N，LayerNorm eps=1e-3。', '',
    '同一用例三条路径固定在同一张物理 P800、相同 CPU 亲和性上比较。独立用例分布在 8 张空闲 P800；每张卡串行执行，第二轮反转用例和路径顺序。运行前检查空闲与 ECC；用设备进程记录确认物理卡归属。', '',
    'GPU：统一外层 CUDA Graph 重放；每图 64 次调用，2048³ MatMul 每图 8 次；7 组 × 20 次重放，以设备事件计时并除以实际逻辑调用数。编译、自动调优、环境加载、预热和图捕获均不计入。端到端：另取 31 个同步普通调用样本，包含 Python/启动/同步成本，不使用 Graph 重放时间代替。', '',
    '每轮取中位数，再取两轮中位数的中位数。加速比 = eager 耗时 / 对应路径耗时，>1 表示更快。只有两轮均通过全部检查的用例参与性能统计。主测试与拆分诊断分别计算各自批次内的配对加速比。', '',
    '数值参考为同环境 eager，比较在 CPU 上完成；验证普通值、换址及改变输入、输出独立性、NaN/Inf、Graph 输入更新、输入与参数不变性，以及计时阶段没有重新编译。TF32 与低精度累加开关关闭，保留中间 dtype 舍入。', '',
    '| dtype / 范围 | atol | rtol |', '|---|---:|---:|',
    '| FP32 全部 | 0.0003 | 0.0003 |', '| FP16 全部 | 0.003 | 0.003 |',
    '| BF16 大矩阵 MatMul | 0.003 | 0.003 |', '| BF16 其余原用例 | 0.03 | 0.003 |', '',
    '## 各组合加速比', '',
    '每个“组合 × 大小”分组有 9 例（3 dtype × 3 尺寸）。单元格为 **两轮均通过例数/9；GPU 加速比几何均值**。均值只包含通过例，支持率必须一起看；不同资源的有效子集可能不同。逐例 GPU、端到端时间及加速比见 '+link('results.html','完整 216 例表格')+' 和 '+link('analysis.json','结构化结果')+'。', '',
    '| 组合 | SDNN 小 | cluster 小 | SDNN 大 | cluster 大 |', '|---|---:|---:|---:|---:|']
groups = {(g['kind'],g['size']):g for g in main['groups']}
for kind,label in labels.items():
    cells=[]
    for size,route in [('small','sdnn'),('small','cluster'),('large','sdnn'),('large','cluster')]:
        g=groups[kind,size]['routes'][route]
        cells.append(f"{g['valid_cases']}/9；{g['gpu_geomean_speedup']:.3f}×" if g['valid_cases'] else '0/9；—')
    lines.append('| '+label+' | '+' | '.join(cells)+' |')
lines += ['', '端到端单独汇总如下，仍以 eager / 对应路径计算；逐例原始 31 样本保存在归档中。', '',
          '| 组合 | SDNN 小 E2E | cluster 小 E2E | SDNN 大 E2E | cluster 大 E2E |','|---|---:|---:|---:|---:|']
for kind,label in labels.items():
    cells=[]
    for size,route in [('small','sdnn'),('small','cluster'),('large','sdnn'),('large','cluster')]:
        x=groups[kind,size]['routes'][route]['e2e_geomean_speedup'];cells.append(f'{x:.3f}×' if x else '—')
    lines.append('| '+label+' | '+' | '.join(cells)+' |')
lines += ['', '## 大矩阵 MatMul：激活函数决定结果', '', '下表为主测试 2048³ 的 GPU 时间，单位 µs。', '',
          '| 组合 | dtype | eager | SDNN | GPU 加速比 | E2E 加速比 |','|---|---|---:|---:|---:|---:|']
for c in main['cases']:
    s=c['case'];r=c['routes']
    if s['K'] and s['M']==2048 and s['dtype'] in ('float32','float16'):
        lines.append(f"| {labels[s['kind']]} | {dtype[s['dtype']]} | {r['eager']['gpu_us']:.3f} | {r['sdnn']['gpu_us']:.3f} | {r['sdnn']['gpu_speedup_vs_eager']:.3f}× | {r['sdnn']['e2e_speedup_vs_eager']:.3f}× |")
lines += ['', '## SDNN MatMul + cluster 后处理拆分诊断', '',
    '12 例、72 条记录全部通过；每次拆分都验证实际绑定的 SDNN 与 cluster 二进制，且无外部库回退。分段本身也使用相同精度门槛和 Graph 协议。下表单位 µs。', '',
    '| 组合 | dtype | M,N,K | eager GPU | SDNN 整体 GPU | 拆分 GPU | 拆分相对 SDNN | 拆分相对 eager |',
    '|---|---|---|---:|---:|---:|---:|---:|']
for c in split['cases']:
    s=c['case'];r=c['routes']
    lines.append(f"| {labels[s['kind']]} | {dtype[s['dtype']]} | {s['M']},{s['N']},{s['K']} | {r['eager']['gpu_us']:.3f} | {r['sdnn']['gpu_us']:.3f} | {r['split']['gpu_us']:.3f} | {c['split_speedup_vs_fused']:.3f}× | {r['split']['gpu_speedup_vs_eager']:.3f}× |")
lines += ['', '分段证据（2048³ FP16）：', '',
    '| 后处理 | 单独 SDNN MatMul GPU µs | 单独 cluster 后处理 GPU µs |', '|---|---:|---:|']
for c in split['cases']:
    s=c['case']
    if s['M']==2048 and s['dtype']=='float16':
        parts=c['routes']['split']['components'];lines.append(f"| {labels[s['kind']]} | {parts['matmul_sdnn']['gpu_us']:.3f} | {parts['bias_activation_cluster']['gpu_us']:.3f} |")
lines += ['',
    'ReLU 的 SDNN 整体约 222 µs，单独 SDNN MatMul 约 221 µs，说明该例主要开销已经在 GEMM；把后处理移到 cluster 增加了约 392 µs 的阶段。精确 GELU 的单 SDNN 内核约 228 µs，cluster 后处理却约 3.26 ms，保留融合更合适。tanh-GELU/SiLU 拆分可显著减少当前 SDNN 后处理开销，但大矩阵拆分方案仍慢于 eager。', '',
    '## 调优与失败定位', '',
    '原生 GEMM 候选调优不等同于优化整段融合代价。本测试保留原配置 `benchmark_epilogue_fusion=False`。小矩阵 FP16 tanh-GELU 在主测试选中 16×128×64 tile，两轮约 51.90 µs；补充实验选中 16×32×32 tile，两轮约 16.46 µs。日志和生成代码证实选择不同。应将融合后的代价和资源切分纳入联合调优；这里分别保留两批结果，没有跨批次拼接计算加速比。', '',
    '按独立用例统计：eager 216/216 通过；SDNN 99/216 通过、90 例编译/链接失败、27 例精度失败；cluster 123/216 通过、90 例 MatMul 模板不支持、3 例精度失败。', '',
    '- cluster MatMul：当前原生 dot/MMA 编译路径要求 SDNN。第一轮保留了实际拒绝证据；第二轮复用失败候选缓存后显示 NoValidChoices。它们是同一支持性限制，不能当作慢速测量。',
    '- SDNN Softmax/LayerNorm：见动态 stride 的 Bufferize 错误、64 个 pipeline event 上限，以及 `xpu::math_rsqrt` 未定义符号等。结论限定为本次 SDK/生成路径的可用性，不推断硬件不能执行这些数学运算。',
    '- SDNN 精度失败：包括全部 15 个大矩阵 BF16 MatMul，用例完整记录初始、改变输入及特殊值检查；Mul+Sum 还存在与尺寸、dtype 有关的失败，2048² 三种 dtype 都失败。',
    '- cluster 精度失败：2048² BF16 的 LayerNorm weight、bias、affine 三个变体；普通 LayerNorm 未列入这三个失败。',
    '- 6 个小矩阵 cluster 归约用例两轮耗时相差超过 10%，最大约 53%；相对 eager 的快慢方向未反转。各轮中位数及样本全部保留。', '',
    '## 环境与测试快照', '',
    '8× P800 OAM（每卡 98304 MiB），驱动 5.0.21.47；Python 3.10、Torch 2.9.0+cu128、FlagTree 0.7.1a1+xpu3.6 / Triton 3.6.0、torch_xmlir 1.0.0.1。Torch 的 CUDA 名称是兼容接口；已通过 XPUDriver、实际 arch=3/warp_size=1、设备 PID 与绑定二进制共同确认 P800 资源。环境版本选择参考 '+
    '[官方 P800 安装说明](https://github.com/flagos-ai/FlagTree/wiki/User-manual-for-xpu)。', '',
    '运行环境全部在任务目录内构建；大库使用原 wheel 字节校验后加载到不可写 memfd。原生编译库 SHA-256：`'+main['native_sha256'][0]+'`。环境加载在计时前完成。', '',
    '测试快照的兼容修改包括：修正 CUDA 兼容架构 86 到实际 XPU arch=3 的传递；避开 NVIDIA shared-memory 估算对所有候选的误过滤；适配 Torch 2.9 模板/缓存/编译返回接口；将 exp/rsqrt 传递到原生 XPU 内建运算；不适用时跳过可选的并行 RNE 优化而保留原运算。两条资源路径使用相同数学与精度约束。所有修改均限于测试快照，没有修改远端主机安装或配置。', '',
    '## 本地材料与远端清理', '',
    '- '+link('results.html','216 例 GPU/E2E 完整表格')+'；'+link('analysis.json','逐例主测试分析')+'；'+link('split-analysis.json','拆分及分段分析')+'。',
    '- '+link('measurements.json','完整测量汇总')+'；'+link('artifacts','已校验的源码、日志、样本、生成代码和编译证据')+'。',
    '- '+link('p800-f06-artifacts.tar.gz','原始归档')+'；'+link('artifacts/archive-manifest.json','逐文件校验清单')+'；'+link('cleanup-status.json','远端清理记录')+'。',
    f"- 已校验 {cleanup['verified_file_count']:,} 个文件；归档 SHA-256：`{cleanup['archive_sha256']}`。",
    f"- 仅删除本次目录 `{cleanup['removed_directory']}`，停止任务专用库进程 {cleanup['stopped_loader_pid']}。清理前后可用磁盘增加约 {(cleanup['free_bytes_after']-cleanup['free_bytes_before'])/2**30:.2f} GiB。", '',
    '复现入口与固定配置在归档中的 `run_env.sh`、`resource_worker.py`、`resource_runner.py`、`full-coverage-plan.json`、`full-source-manifest.json`；拆分版本以 `split_*_v2.py` 和 `split-v2-source-manifest.json` 为准。初期兼容性诊断和首次图切分脚本失败记录也保留，但不参与上述统计。', '']
(ROOT/'README.md').write_text('\n'.join(lines))

page=['<!doctype html><html lang="zh-CN"><meta charset="utf-8"><title>P800 F06 216 例结果</title>',
      '<style>body{font:14px system-ui;margin:24px;color:#17202a}table{border-collapse:collapse;margin:20px 0;width:100%}th,td{border:1px solid #ddd;padding:7px;text-align:right}th{background:#edf2f7;position:sticky;top:0}td:nth-child(-n+4){text-align:left}tr:nth-child(even){background:#fafafa}a{color:#075fba}</style>',
      '<h1>P800 F06：216 例完整结果</h1><p>同卡两轮均通过才显示时间；时间单位 µs；加速比=eager/对应路径。GPU Graph 与普通调用端到端分别统计。</p>']
for metric,title in [('gpu_us','GPU Graph 重放'),('e2e_us','同步普通调用端到端')]:
    page.extend([f'<h2>{title}</h2><table><thead><tr><th>ID</th><th>组合</th><th>dtype</th><th>M,N,K</th><th>eager</th><th>SDNN</th><th>cluster</th><th>SDNN 加速比</th><th>cluster 加速比</th></tr></thead><tbody>'])
    for c in main['cases']:
        s=c['case'];r=c['routes'];ratio='gpu_speedup_vs_eager' if metric=='gpu_us' else 'e2e_speedup_vs_eager'
        cells=[str(c['ordinal']),labels[s['kind']],dtype[s['dtype']],f"{s['M']},{s['N']},{s['K'] or '—'}"]
        cells += [value(r[k],metric) for k in ['eager','sdnn','cluster']]
        cells += [f"{r[k][ratio]:.3f}×" if ratio in r[k] else '—' for k in ['sdnn','cluster']]
        page.append('<tr>'+''.join('<td>'+html.escape(x)+'</td>'for x in cells)+'</tr>')
    page.append('</tbody></table>')
page.append('</html>');(ROOT/'results.html').write_text('\n'.join(page))
print('Wrote final README and 216-case GPU/E2E table')
