"""Build an offline report from independently verified P800 measurements."""
from pathlib import Path
import collections, html, json, math, statistics
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.colors import TwoSlopeNorm
from matplotlib import font_manager
import numpy as np
R=Path(__file__).resolve().parent
font_manager.fontManager.addfont('/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc')
plt.rcParams.update({'font.family':'Noto Sans CJK JP','axes.unicode_minus':False,'font.size':11,'figure.dpi':150})
source=json.loads((R/'result-snapshot.json').read_text())
chosen={}
for entry in source:
 d=entry['result']
 if not entry['path'].startswith('results/final-v9') or d['status']!='completed':continue
 if not d.get('output_nan_poison_validation') or set(d.get('graph_mutation_accuracy',{}))!={'sdnn','cluster'}:continue
 if len(d['measurements'])!=4:continue
 chosen[d['case']['ordinal']]=entry
rows=[]
if not chosen:raise SystemExit('No completed v9 results yet')
for ordinal,entry in sorted(chosen.items()):
 d=entry['result'];c=d['case'];resources={}
 for res in ['sdnn','cluster']:
  ms=[m for m in d['measurements'] if m['resource']==res]
  values=[x for m in ms for x in m['gpu_us']['samples_us']]
  end=[x for m in ms for x in m['e2e_us']['samples_us']]
  med=statistics.median(values);config=d['candidates'][d['best'][res]]['config']
  resources[res]=dict(gpu_us=med,e2e_us=statistics.median(end),gpu_min_us=min(values),gpu_max_us=max(values),
   round_drift=max(m['gpu_us']['median_us'] for m in ms)/min(m['gpu_us']['median_us'] for m in ms),
   tflops=d['counts']['flops']/med/1e6,gbps=d['counts']['bytes']/med/1e3,
   gelems=c['m']*c['n']/med/1e3,config=config,
   max_abs_error=max([m['accuracy']['max_abs_error'] for m in ms]+[d['graph_mutation_accuracy'][res]['max_abs_error']]),
   calibration=d.get('batch_calibration',{}).get(res))
 rows.append(dict(**c,resources=resources,sdnn_over_cluster=resources['sdnn']['gpu_us']/resources['cluster']['gpu_us'],
                  e2e_sdnn_over_cluster=resources['sdnn']['e2e_us']/resources['cluster']['e2e_us'],tolerance=d['tolerance'],source=entry['path'],gpu=d['gpu'],source_sha256=d['source_sha256'],graph_batch_policy=d.get('graph_batch_policy'),runtime_settings=d.get('runtime_settings')))
(R/'measurements.json').write_text(json.dumps(rows,ensure_ascii=False,indent=2))
complete=len(rows)==88
colors={'sdnn':'#176baf','cluster':'#df7625'}
fig,axs=plt.subplots(1,2,figsize=(14,5.4),layout='constrained')
for dtype,style in [('float32','-'),('float16','--'),('bfloat16',':')]:
 sub=[r for r in rows if r['op']=='matmul' and r['dtype']==dtype]
 if not sub:continue
 for res in ['sdnn','cluster']:
  axs[0].plot([r['n'] for r in sub],[r['resources'][res]['tflops'] for r in sub],style,color=colors[res],marker='o',markersize=3,label=f'{res.upper() if res=="sdnn" else res} / {dtype}')
sub=[r for r in rows if r['op']=='fma128']
for res in ['sdnn','cluster']:
 axs[1].plot([r['n'] for r in sub],[r['resources'][res]['tflops'] for r in sub],color=colors[res],marker='o',label=res.upper() if res=='sdnn' else res)
for ax,title in zip(axs,['矩阵乘：严格精度下的可达吞吐','每元素连续 128 次乘加：可达吞吐']):
 ax.set_xscale('log',base=2);ax.set_yscale('log');ax.set_xlabel('方阵阶数 N');ax.set_ylabel('逻辑 TFLOP/s（对数坐标）');ax.set_title(title);ax.grid(True,alpha=.2);ax.legend(fontsize=8)
fig.savefig(R/'compute-throughput.png');fig.savefig(R/'compute-throughput.svg');plt.close(fig)
ops=['copy','add','exp','fma128','sum','max'];names={'copy':'拷贝','add':'加法','exp':'指数 exp','fma128':'128 次乘加','sum':'按行求和','max':'按行最大值','matmul':'矩阵乘'}
sizes=[16,32,64,128,1024,2048,4096,8192];matrix=np.full((6,8),np.nan)
for r in rows:
 if r['dtype']=='float32' and r['op'] in ops:matrix[ops.index(r['op']),sizes.index(r['n'])]=r['sdnn_over_cluster']
fig,ax=plt.subplots(figsize=(14,7),layout='constrained')
im=ax.imshow(np.ma.masked_invalid(np.log2(matrix)),cmap='RdBu_r',norm=TwoSlopeNorm(vmin=-3,vcenter=0,vmax=3),aspect='auto')
ax.set_xticks(range(8),[str(n) for n in sizes]);ax.set_yticks(range(6),[names[o] for o in ops]);ax.set_xlabel('FP32 方阵阶数 N');ax.set_title('每组独立调优后，哪条路径更快？\n差距小于 5% 标为接近；颜色在 8× 处饱和，单元格标出实际倍数')
for i in range(6):
 for j in range(8):
  v=matrix[i,j]
  if not np.isfinite(v):label='待完成';color='#555'
  elif 1/1.05<v<1.05:label='接近';color='#222'
  else:
   label=('cluster' if v>1 else 'SDNN')+'\n'+f'{max(v,1/v):.2f}×'
   color='white' if abs(math.log2(v))>1.6 else '#222'
  ax.text(j,i,label,ha='center',va='center',fontsize=10,color=color)
fig.colorbar(im,ax=ax,shrink=.75,ticks=[-3,-2,-1,0,1,2,3],label='log2(SDNN GPU 耗时 / cluster GPU 耗时)')
fig.savefig(R/'resource-map.png');fig.savefig(R/'resource-map.svg');plt.close(fig)

def number(x):return f'{x:,.3f}' if x<100 else f'{x:,.2f}'
trs=[]
for r in rows:
 a,b=r['resources']['sdnn'],r['resources']['cluster'];q=r['sdnn_over_cluster'];win='接近' if 1/1.05<q<1.05 else ('cluster' if q>1 else 'SDNN')
 metric='TFLOP/s' if r['op'] in ['matmul','fma128'] else ('GB/s' if r['op'] in ['copy','add'] else 'Gelem/s')
 key={'TFLOP/s':'tflops','GB/s':'gbps','Gelem/s':'gelems'}[metric]
 cells=[names[r['op']],str(r['n']),r['dtype'],number(a['gpu_us']),number(b['gpu_us']),win+' '+f'{max(q,1/q):.2f}×',number(a[key]),number(b[key]),metric,number(a['e2e_us']),number(b['e2e_us'])]
 trs.append(f'<tr data-op="{r["op"]}" data-scale="{r["scale"]}" data-dtype="{r["dtype"]}">'+''.join('<td>'+html.escape(v)+'</td>' for v in cells)+'</tr>')
calibrations=[v['calibration']['normalized_ratio'] for r in rows for v in r['resources'].values() if v['calibration']]
drifts=[v['round_drift'] for r in rows for v in r['resources'].values()]
status='全部完成并通过独立校验' if complete else f'独立校验进行中：{len(rows)}/88 组'
calibration_text=(f'{len(calibrations)} 条低延迟路径完成 Graph 批量翻倍校验；归一化耗时比为 {min(calibrations):.3f}–{max(calibrations):.3f}。' if calibrations else '批量一致性校验正在进行。')
summary=dict(completed_cases=len(rows),expected_cases=88,complete=complete,
 calibration_min=min(calibrations,default=None),calibration_max=max(calibrations,default=None),
 round_drift_max=max(drifts,default=None),
 total_final_candidates=sum(len(x['result']['candidates']) for x in chosen.values()),
 original_tuning_candidates=sum(len(x['result']['candidates']) for x in source if x['path'].startswith(('results/formal-','results/extra-sdnn-'))),
 environment=dict(device='Kunlun P800 OAM 96GiB',driver='5.0.21.47',torch='2.9.0+cu128',triton='3.6.0',flagtree='0.7.1a1+xpu3.6'))
(R/'analysis.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2))
page='''<!doctype html><html lang="zh-CN"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>P800 SDNN / cluster 计算能力实测</title><style>
body{font:16px/1.65 system-ui,"Noto Sans CJK SC",sans-serif;color:#17243a;background:#f3f6fa;margin:0}main{max-width:1450px;margin:auto;padding:32px}h1{font-size:32px;line-height:1.25}h2{font-size:23px;margin-top:30px}.tag{color:#176baf;font-weight:700}.card{background:white;border:1px solid #dde4ed;border-radius:12px;padding:22px;margin:18px 0}.muted{color:#536479}img{display:block;max-width:100%;height:auto}table{width:100%;border-collapse:collapse;font-size:13px;font-variant-numeric:tabular-nums}th,td{padding:9px 10px;border-bottom:1px solid #e6ebf2;text-align:right;white-space:nowrap}th{background:#e9eff8;position:sticky;top:0}td:first-child,th:first-child{text-align:left}select{padding:9px;margin:5px;border:1px solid #bcc9d8;border-radius:6px;background:white}.scroll{overflow:auto;max-height:700px}a{color:#176baf}code{background:#eef2f7;padding:2px 4px;border-radius:4px}@media print{body{background:white}main{padding:0}.scroll{max-height:none}select{display:none}.card{break-inside:avoid}}</style><main>
<p class="tag">P800 · 单一计算微基准 · 2026-11-02</p><h1>SDNN 与 cluster，分别适合哪些计算？</h1><p class="muted">STATUS</p>
<div class="card"><p><b>矩阵乘倾向 SDNN；寄存器内密集乘加倾向 cluster。拷贝、逐元素和归约需要结合规模判断，不能按“所有归约”或“所有逐元素”一概选择。</b></p><p>本实验比较两条编译路径各自搜索得到的最快正确配置，覆盖小矩阵和大矩阵，不使用 F06 融合图或 Inductor。数值代表固定工具链、这些输入和搜索空间中的可达性能，不能视为经过证明的硬件理论峰值。</p></div>
<div class="card"><h2>规模与计算类型</h2><p>共 88 组：GEMM 为 N=16、32、64、128、512、1024、2048、4096，分别测 FP32、FP16、BF16；拷贝、加法、exp、128 次乘加、按行 sum/max 为 N=16、32、64、128、1024、2048、4096、8192。拷贝覆盖三种数据类型，其他逐元素/归约为 FP32。</p><img src="resource-map.png" alt="不同规模上两条计算路径的实测优势"><p class="muted">这里比较的是 GPU 时间；5% 以内的差别标为接近。密集乘加采用与固定容差相符的 FMA 或乘加表达式，吞吐按逻辑浮点运算量计算。</p></div>
<div class="card"><h2>计算吞吐</h2><img src="compute-throughput.png" alt="SDNN 与 cluster 的 GEMM 和密集乘加吞吐"><p class="muted">GEMM 按 2N³、连续乘加按 256N² 计 FLOPs。高精度参考和输入生成不计入 GPU 时间。</p></div>
<div class="card"><h2>全部测量</h2><p>GPU 时间为 CUDA Graph 重放下每次内核的微秒数。端到端为设备输入就绪后的单次 Python 调用及同步耗时；不含输入分配、主机传输、预转置、编译或调优。带宽按逻辑读写字节计算，较小工作集可命中缓存，不能把它们的最高值当作 HBM 带宽。</p>
<select id="op"><option value="">全部计算</option>OPTIONS</select><select id="scale"><option value="">全部规模</option><option value="small">小矩阵</option><option value="large">大矩阵</option></select><select id="dtype"><option value="">全部类型</option><option>float32</option><option>float16</option><option>bfloat16</option></select>
<div class="scroll"><table><thead><tr><th>计算</th><th>N</th><th>输入类型</th><th>SDNN GPU µs</th><th>cluster GPU µs</th><th>优势</th><th>SDNN 吞吐</th><th>cluster 吞吐</th><th>单位</th><th>SDNN 端到端 µs</th><th>cluster 端到端 µs</th></tr></thead><tbody>ROWS</tbody></table></div></div>
<div class="card"><h2>精度与计时口径</h2><ul>
<li>GEMM 使用 FP64 CPU 参考，输出与累加为 FP32；FP32 atol/rtol=3e-4，FP16/BF16 atol/rtol=0.003。拷贝按位相等，max 精确一致；未放宽容差。</li>
<li>输入由固定种子产生，GEMM/普通逐元素输入范围为 [-0.5,0.5)，exp 为 [-8,0)。乘加递推 y←0.99y+0.001，共 128 次。结论不覆盖任意动态范围、非方阵、非连续张量或尾部形状。</li>
<li>两条路径分别调优分块、布局与适用的编译参数；最终配置在新进程中锁定复测。每组两种资源在同一张物理卡、相同输入上运行，按 SDNN→cluster、cluster→SDNN 测量，每条路径合计 14 个 GPU 样本和 22 个同步调用样本，取中位数。Graph 按同一约 4 ms 的目标累积 GPU 时间选择批量（最多 4096 次），耗时按实际内核次数归一化，摊薄固定开销。两条路径可使用不同批量，以免慢路径重复过量；均使用相同的 CUDA Graph / 事件计时方法。</li>
<li>独立输入再次校验；输出先填 NaN，验证完整写入。改变 Graph 捕获地址上的输入后分别重放，每条路径重新填 NaN 再检查，避免缓存结果或前一内核输出掩盖错误。</li>
<li>CALIBRATION</li>
<li>B 的连续布局与预转置布局均在计时前准备。GPU 时间衡量输入已准备好时的计算能力；单次端到端也不包含这项预处理，实际业务还需加上布局转换成本。</li>
<li>不调整时钟、不重置设备；每张卡同时仅运行一个本任务测量进程。记录物理设备/PID、ECC、时钟、编译器版本、源码和生成二进制的 SHA256。</li></ul></div>
<div class="card"><h2>编译与适用范围</h2><p>环境为 P800 OAM 96GiB、驱动 5.0.21.47、FlagTree 0.7.1a1+xpu3.6、Triton 3.6.0、Torch 2.9.0+cu128 的 XPU 后端。每个候选核对真实 XPU 后端、arch=3 和 is_sdnn 元数据；cluster GEMM 使用乘法/归约或外积，避免 tl.dot 自动路由到 SDNN。</p><p>调优中发现 cluster 循环布局、显式 FMA 和部分分组/旧展开参数的编译或运行时缺陷。失败候选不计入结论，受影响案例在新进程中复测。SDNN 的通用长乘加链、cluster 的 GEMM 都受当前生成代码影响，因此不能用它们的差距直接推断两种硬件单元的原始算力比。乘加用例是每元素 128 步的连续依赖链，未采用专门的多累加器指令峰值基准；其 TFLOP/s 不能当作硬件 FMA 峰值。原始 IR 被此发布版隐藏，保留了实际生成的 ELF/xpubin 和编译元数据。</p><p>测试依赖在本地下载后上传，服务器全程不下载依赖。所有远端测试文件均位于 zhaoweiming 目录。结果归档和清理状态见本地清理记录。</p></div>
<div class="card"><h2>本地交付</h2><p><a href="speed-ratios.html">逐规模 SDNN : cluster 速度比</a> · <a href="measurements.json">完整测量数据 JSON</a> · <a href="analysis.json">汇总与校验状态</a> · <a href="resource-map.svg">优势图 SVG</a> · <a href="compute-throughput.svg">吞吐图 SVG</a> · <a href="remote-final-artifacts.tar.gz">原始记录与最快内核归档</a> · <a href="remote-cleanup.json">远端清理记录</a></p></div>
<script>const filters=['op','scale','dtype'];function update(){document.querySelectorAll('tbody tr').forEach(r=>{r.hidden=filters.some(k=>document.getElementById(k).value&&r.dataset[k]!==document.getElementById(k).value)})}filters.forEach(k=>document.getElementById(k).addEventListener('change',update));</script></main></html>'''
page=page.replace('STATUS',status).replace('OPTIONS',''.join(f'<option value="{op}">{names[op]}</option>' for op in ['matmul',*ops])).replace('ROWS',''.join(trs)).replace('CALIBRATION',calibration_text)
(R/'results.html').write_text(page)
print(json.dumps(summary,ensure_ascii=False))
