"""Collect independent, real torch.compile runs and emit a reproducible report."""
import json
import math
from collections import Counter, defaultdict
from html import escape
from itertools import product
from pathlib import Path

ROOT = Path(__file__).resolve().parent
KINDS = ('mul_sum','mul_sum_keepdim','add_silu','add_gelu_tanh','add_gelu_exact',
         'add_layernorm','add_layernorm_affine','add_softmax','matmul_bias','matmul_bias_relu',
         'matmul_bias_silu','matmul_bias_gelu_tanh','matmul_bias_gelu_exact')
DTYPES = ('float32','float16')
SHAPES = ('64x1024','512x1024','2048x2048')

def collect():
    attempts = defaultdict(list)
    for pattern in ('v4-full[0-3].log','v4-retry*.log'):
        for path in sorted(ROOT.glob(pattern)):
            current = {}
            for line in path.read_text(errors='replace').splitlines():
                if 'BENCH {"event":' in line:
                    row,_=json.JSONDecoder().raw_decode(line.split('BENCH ',1)[1])
                    current[row['event']] = row
                if line.startswith('END ['):
                    kind, dtype, shape, code = json.loads(line[4:])
                    if any((r['kind'], r['dtype'], r['shape']) != (kind, dtype, shape) for r in current.values()):
                        raise ValueError(f'case and END marker disagree in {path}')
                    attempts[(kind,dtype,shape)].append(dict(log=path.name,exit=code,**current))
                    current={}
    return attempts

def table(headers,rows):
    return ('<div class="scroll"><table><thead><tr>'+''.join('<th>'+escape(h)+'</th>' for h in headers)
            +'</tr></thead><tbody>'+''.join('<tr>'+''.join('<td>'+str(c)+'</td>' for c in row)
            +'</tr>' for row in rows)+'</tbody></table></div>')

def render():
    manifest=json.loads((ROOT/'manifest.json').read_text())
    attempts=collect()
    rows=[]
    for key in product(KINDS, DTYPES, SHAPES):
        runs=attempts.get(key,[])
        valid=[r for r in runs if r['exit']==0 and 'result' in r]
        row=dict(kind=key[0],dtype=key[1],shape=key[2],attempts=runs)
        if valid:
            trial=valid[0]
            result=trial['result']
            assert result['route'] == trial['chosen']['route'] and trial['begin']['library'] == manifest['lib_md5']
            assert trial['begin']['fusion'] == '/opt/hsp/triton/experimental/graph_fusion/__init__.py'
            assert math.isclose(result['speedup'],result['event_us']['eager']/result['event_us']['compiled'])
            row.update(status='measured',route=result['route'],speedup=result['speedup'],
                       host_speedup=result['host_speedup'],log=trial['log'],event_us=result['event_us'],
                       host_us=result['host_us'],cold_s=result['cold_s'],stages=result['stages'])
        else:
            row['status']='timeout' if runs and runs[-1]['exit'] in (124,-9,137) else 'failed' if runs else 'pending'
        rows.append(row)
    valid=[r for r in rows if r['status']=='measured']
    print(len(valid),'/',len(rows),'routes',dict(Counter(r['route'] for r in valid)),'statuses',dict(Counter(r['status'] for r in rows)))
    if len(valid) != 78:
        return
    def records(pattern, prefix):
        items = []
        for log in sorted(ROOT.glob(pattern)):
            for line in log.read_text(errors='replace').splitlines():
                if line.startswith(prefix):
                    row = json.loads(line[len(prefix):], parse_constant=str)
                    items.append(dict(log=log.name, **row))
        return items

    softmax = records('v4-supp2.log', 'AB ')
    extra_trials = [r for r in records('v4-*silu*.log', 'BENCH ') + records('v4-supp3.log', 'BENCH ')
              if r['event'] == 'result']
    checks = records('v4-supp0.log', 'CHECK ')
    package=dict(manifest=manifest,protocol=dict(matmul_k=64,event_batches=7,event_calls_per_batch=40,host_samples=32,
                                                 seeds=[61,93],single_kernel='backend default',tolerances={'float32':.0003,'float16':.003}),
                 cases=rows, softmax_ab=softmax, additional_silu=extra_trials, regressions=checks, opt_in_silu=records('v4-split.log','SPLIT '))
    (ROOT/'results.json').write_text(json.dumps(package,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
    summary=Counter(r['route'] for r in valid); wins=sum(r['speedup']>1 for r in valid);wallwins=sum(r['host_speedup']>1 for r in valid)
    head=f'<header><p>昆仑芯 P800 · 2026 年 11 月 8 日</p><h1>F06 修复后正式入口复测</h1><p>{len(valid)}/78 个标准组合取得可核验的输出与耗时。{wins} 个设备事件加速比大于 1，{wallwins} 个同步调用加速比大于 1。</p></header>'
    content=[head,'<h2>运行版本与口径</h2>',
             '<p>个人镜像 <code>'+escape(manifest['image'])+'</code>。每项均通过 torch.compile(fullgraph=True, dynamic=False) 和真实 autotune_resource_backend 首次校准。两组输入分别验证形状、dtype、设备、数值和旧输出保留。FP32 与 FP16 的 atol/rtol 分别为 3e−4、3e−3。</p>',
             '<p>矩阵乘 K=64。主矩阵运行在物理卡 4–7，每卡串行，超时后在空闲卡独立重试。加速比 = 同进程 eager 模块耗时 / 同一模块经 torch.compile 调用的耗时。设备事件取交替执行的 7 批中位数，每批 40 次；同步端到端耗时取 32 次中位数，含包装与发射开销。表中 eager 表示编译包装最后调用 eager，仍报告实测比值。冷启动含首次编译和候选校准，单列在明细。接近 1 的差异可能受调度抖动影响。</p>',
             '<p>实际选路　'+ '，'.join(escape(k)+' '+str(v)+' 项' for k,v in summary.items())+'。</p>',
             '<p><a href="results.json">全部原始样本与校准决策</a> · <a href="manifest.json">环境与源码指纹</a> · <a href="benchmark.py">复测程序</a> · <a href="../f06-week-audit/F06本周完整复核.html">修复前的审查报告</a></p>']
    retries = [r for r in rows if any(a['exit'] for a in r['attempts'])]
    if retries:
        content.append('<p>有 '+str(len(retries))+' 个组合在独立进程重试后获得有效样本。明细保留首次失败或超时及重试记录，表格优先采用首轮完整结果，再采用按编号排序的首个有效重试。3 个矩阵组合出现冷启动超时，FP16 512×1024 LayerNorm 的一批设备事件返回无效耗时，该批已丢弃。FP16 ReLU 的重试栈停在 PyTorch Inductor 原生调优的设备同步。<a href="v4-retry-a1.log">超时栈</a></p>')
    for dt in DTYPES:
        def cell(r):
            if r['status']!='measured':return {'timeout':'超时','pending':'待测','failed':'失败'}[r['status']]
            return f"<b>{r['speedup']:.2f}×</b> {escape(r['route'])}"
        content.extend(['<h2>'+dt.upper()+' 实际路由与设备事件加速比</h2>',
                        table(['模板',*SHAPES],[[k]+[cell(r) for r in rows if r['kind']==k and r['dtype']==dt] for k in KINDS])])
    content.extend(['<h2>修复及设备回归</h2>',
                    table(['复核项','修复后的行为或验收条件'],[
                        ['尾块与广播','按实际元素数保护尾块。65×1024 的 7,168 个保护元素保持原值。SDNN 周期加载按源周期切分，无法证明寻址的形式在编译期拒绝。'],
                        ['Mul+Sum','核对第二输入的形状、dtype、设备及步长。FP16 的乘积和归约输出保持 eager 的 dtype 和 keepdim 形状。低精度 SDNN 通用 sum 在计划枚举与显式区域入口均被拒绝。'],
                        ['输出生命周期与 LayerNorm','每次返回独立输出。使用平移后的统计量，对高均值低方差输入与 CPU 双精度参考比较。正式候选另须符合设备 eager 的特殊值分类。'],
                        ['矩阵与激活','检查输入顺序、图输出及 bias 的 alpha，K 尾部按有效范围加载。SiLU 将 sigmoid 输入上界设为 40，保留原始乘数，验证 +Inf、−Inf、NaN，单核可接受 M=65、513。'],
                        ['正式入口与证据','修复 Dynamo 单元素返回、Inductor 输出结构、可训练 affine 参数在 no-grad 下的校准与实际资源匹配。原生发射记录内核名、资源和二进制哈希。真实 torch.compile 已启用，公共 fusion 入口已随包安装。'],
                        ['BF16','寄存器 f32→bf16→f32 执行最近偶数舍入。原生调优器对 BF16 点算子限定合法 XBLOCK，超过限制的配置在发射前拒绝。'],
                        ['计时与准入','实际运行两轮端到端准入，要求相对基线至少 3% 收益。最终表使用独立批次，并计入外层调用开销。个别候选的无效计时单独处理。']]),
                    '<p><a href="v4-unit-complete.log">仓库与编译器测试</a> · <a href="v4-supp0.log">设备边界与数值测试</a> · <a href="v4-supp1.log">BF16 XBLOCK 对照</a> · <a href="v4-supp2.log">周期 DMA 硬件套件及 Softmax A/B</a> · <a href="isolate.log">低精度 SDNN 故障隔离</a> · <a href="v4-split.log">可选 SiLU 分段路径数值准入</a> · <a href="v4-installed.sha256">镜像内文件校验</a></p>'])
    split = records('v4-split.log', 'SPLIT ')
    if split:
        content.append('<p>历史可选 SiLU 双核实现也按正式数值门槛核验。FP16 的 cluster 与 SDNN 分段、FP32 的 cluster 分段通过。FP32 SDNN LUT 分段超过精度门槛，校准拒绝该候选。默认 SiLU 使用单核。</p>')
    if softmax:
        content.extend(['<h2>FP32 Softmax 片上复用</h2><p>两种写法使用相同输入、分块和独立输出。这里的微秒数衡量 TLE 内核改写。</p>',
                        table(['输入尺寸','重复搬运 µs','复用后 µs','内核比值'],
                              [[f"{r['m']}×{r['n']}",f"{r['median_us']['two_copies']:.2f}",f"{r['median_us']['one_copy']:.2f}",f"{r['ratio']:.3f}×"] for r in softmax])])
    if extra_trials:
        content.extend(['<h2>FP32 MatMul+Bias+SiLU 非整齐尺寸</h2><p>K=64，正式入口和计时协议与标准表相同。列出各次取得有效数据的独立校准，同一形状可能选中不同路线。两种形状的 native_mm 均已进入正式候选并通过数值验证。65 行独立校准时曾选中 eager，也曾选中 native_mm。513 行直接单核约 24 µs，完整调用的加速比见表。<a href="silu-cap.log">单核特殊值与实现对照</a></p>',
                        table(['输入 M×N','选中路由','eager µs','编译后 µs','设备事件 ×','同步 ×','记录'],
                              [[r['shape'],r['route'],f"{r['event_us']['eager']:.2f}",f"{r['event_us']['compiled']:.2f}",f"{r['speedup']:.3f}",f"{r['host_speedup']:.3f}",f'<a href="{r["log"]}">日志</a>'] for r in sorted(extra_trials,key=lambda r:(int(r['shape'].split('x')[0]),r['log']))])])
    content.append('<p>结论覆盖 P800-152 上这 13 个模板的固定形状推理。BF16 为专项验证。整模型 tokens/s、动态形状及其他芯片需各自测量。</p>')
    content.extend(['<h2>逐例耗时</h2>',table(['模板','精度','输出尺寸','路由','eager µs','编译后 µs','事件 ×','同步 ×','首次调用 s','记录'],[
        [r['kind'],r['dtype'],r['shape'],r['route'],f"{r['event_us']['eager']:.2f}",f"{r['event_us']['compiled']:.2f}",
         f"{r['speedup']:.3f}",f"{r['host_speedup']:.3f}",f"{r['cold_s']:.1f}",f'<a href="{r["log"]}">日志</a>'] if r['status']=='measured'
        else [r['kind'],r['dtype'],r['shape'],r['status'],*['—']*5,f'<a href="{r["attempts"][-1]["log"]}">日志</a>' if r['attempts'] else '—'] for r in rows])])
    style='body{margin:auto;max-width:1200px;padding:28px;color:#203b38;font:16px/1.6 system-ui,sans-serif}header{border-bottom:3px solid #297465}h2{margin-top:2em}a{color:#075e87}table{border-collapse:collapse;width:100%;font-size:14px}td,th{border:1px solid #cad7d2;padding:6px 10px;text-align:left}th{background:#e2eee8}tr:nth-child(even){background:#f4f8f6}.scroll{overflow:auto}'
    (ROOT/'F06修复后实际路由与加速比.html').write_text('<!doctype html><html lang="zh-CN"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>F06 修复后实测</title><style>'+style+'</style><main>'+''.join(content)+'</main></html>')

if __name__=='__main__':
    render()
