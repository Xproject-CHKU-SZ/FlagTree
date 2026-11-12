from pathlib import Path
import html
import json
import statistics
import hashlib
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.font_manager import FontProperties

ROOT=Path(__file__).resolve().parent
D=json.loads((ROOT/'measurements.json').read_text())
copies=D['copy'];relays=D['relay'];dma=D['device_dma']['cases'];host=D['host']['cases']


def size(b):
    for unit,div in [('GiB',2**30),('MiB',2**20),('KiB',2**10)]:
        if b>=div:return f'{b/div:g} {unit}'
    return f'{b} B'


def number(v):return f'{v:,.3f}' if v<100 else f'{v:,.2f}'
def ratio(a,b):return f'1 : {a/b:.3f}'
def table(headers,rows,attrs=None):
    body=[]
    for i,row in enumerate(rows):
        attr='' if attrs is None else f' data-dtype="{attrs[i]}"'
        body.append('<tr'+attr+'>'+''.join('<td>'+html.escape(str(x))+'</td>' for x in row)+'</tr>')
    return '<div class="scroll"><table><thead><tr>'+''.join('<th>'+html.escape(h)+'</th>' for h in headers)+'</tr></thead><tbody>'+''.join(body)+'</tbody></table></div>'


font=FontProperties(fname='/usr/share/fonts/opentype/noto/NotoSansCJK-Medium.ttc')
plt.rcParams.update({'font.family':font.get_name(),'axes.unicode_minus':False,'font.size':10,
                     'axes.spines.top':False,'axes.spines.right':False,'figure.facecolor':'#f7f9fc'})
colors={'sdnn':'#2267b2','cluster':'#d46522'}
fig,axes=plt.subplots(2,2,figsize=(13,9))
for ax,direction,title in [(axes[0,0],'read','显存 → 片上存储：稳态 DMA'),(axes[0,1],'write','片上存储 → 显存：稳态 DMA')]:
    x=[c['payload_bytes'] for c in dma]
    for resource in ['sdnn','cluster']:
        vals=[c['resources'][resource+'-'+direction] for c in dma]
        ax.plot(x,[v['GBps'] for v in vals],marker='o',ms=4,color=colors[resource],label=resource.upper() if resource=='sdnn' else resource)
        ax.fill_between(x,[b/v['p90_us']/1000 for b,v in zip(x,vals)],
                        [b/v['p10_us']/1000 for b,v in zip(x,vals)],color=colors[resource],alpha=.12)
    ax.set_title(title,fontproperties=font)
fp32=sorted([c for c in copies if c['dtype']=='float32'],key=lambda c:c['n'])
for resource in ['sdnn','cluster']:
    axes[1,0].plot([c['payload_bytes'] for c in fp32],[c['resources'][resource]['payload_GBps'] for c in fp32],
                   marker='o',ms=4,color=colors[resource],label=resource.upper() if resource=='sdnn' else resource)
axes[1,0].set_title('显存 → 显存：完整 copy 内核',fontproperties=font)
for direction,color,label in [('h2d','#168479','CPU → P800'),('d2h','#8056a8','P800 → CPU')]:
    rows=sorted([c for c in host if c['direction']==direction],key=lambda c:c['n'])
    axes[1,1].plot([c['payload_bytes'] for c in rows],[c['GBps'] for c in rows],marker='o',ms=4,color=color,label=label)
axes[1,1].set_title('主机 ↔ 显存：固定页内存 + Graph',fontproperties=font)
ticks=[1024,16384,262144,4*2**20,64*2**20,2**30]
for ax in axes.flat:
    ax.set_xscale('log',base=2);ax.set_yscale('log');ax.set_xticks(ticks,[size(x) for x in ticks])
    ax.set_xlabel('每轮有效载荷（FP32 等效矩阵）',fontproperties=font)
    ax.set_ylabel('有效带宽 GB/s',fontproperties=font)
    ax.grid(True,which='major',alpha=.17);ax.legend(prop=font,frameon=False)
fig.suptitle('P800 数据搬运实测 · 1 KiB 至 1 GiB',fontproperties=font,fontsize=18)
fig.text(.5,.02,'各图计时范围不同，勿直接比较小块延迟；阴影为单向 DMA 的 P10–P90 样本范围。所有带宽均按有效载荷 B / t 计算。',
         fontproperties=font,ha='center',fontsize=9,color='#555')
fig.tight_layout(rect=(0,.04,1,.95));fig.savefig(ROOT/'transfer-overview.png',dpi=180);fig.savefig(ROOT/'transfer-overview.svg');plt.close(fig)

ratios=[]
for c in dma:
    cp=next(v for v in copies if v['n']==c['n'] and v['dtype']=='float32')
    rs=c['resources'];cr=cp['resources']
    ratios.append(dict(n=c['n'],payload_bytes=c['payload_bytes'],
        read_cluster_speed_per_sdnn=rs['sdnn-read']['transfer_us']/rs['cluster-read']['transfer_us'],
        write_cluster_speed_per_sdnn=rs['sdnn-write']['transfer_us']/rs['cluster-write']['transfer_us'],
        copy_cluster_speed_per_sdnn=cr['sdnn']['gpu_us']/cr['cluster']['gpu_us']))
copycal=[v['calibration']['ratio'] for c in copies for v in c['resources'].values() if 'calibration' in v]
hostcal=[c['calibration']['ratio'] for c in host if 'calibration' in c]
analysis=dict(ratios_fp32=ratios,normalization='SDNN speed = 1; cluster speed = SDNN time / cluster time',
    fixed_cost_upper_bound=max(v['fixed_cost_upper_bound'] for c in dma for v in c['resources'].values()),
    copy_graph_calibration_range=[min(copycal),max(copycal)],host_graph_calibration_range=[min(hostcal),max(hostcal)],
    bitwise_validation=True,remote_downloads=False,device_resets=False,known_runtime_fault_devices=[1,2])
if (ROOT/'remote-cleanup.json').exists():
    try:analysis['cleanup']=json.loads((ROOT/'remote-cleanup.json').read_text())
    except json.JSONDecodeError:pass
(ROOT/'analysis.json').write_text(json.dumps(analysis,indent=2))

sections=[]
sections.append('<section id="ratios"><h2>各尺寸速度比</h2><p>统一写作 <b>SDNN : cluster</b>，并固定 SDNN = 1。右侧数值等于 SDNN 耗时 ÷ cluster 耗时。例如 1 : 1.175 表示 cluster 的速度为 SDNN 的 1.175 倍。</p>')
sections.append(table(['矩阵 FP32','数据量','读入片上存储','写回显存','完整显存拷贝'],[
    [f"{r['n']} × {r['n']}",size(r['payload_bytes']),f"1 : {r['read_cluster_speed_per_sdnn']:.3f}",f"1 : {r['write_cluster_speed_per_sdnn']:.3f}",f"1 : {r['copy_cluster_speed_per_sdnn']:.3f}"] for r in ratios]))
sections.append('<p>单向搬运采用长循环摊销后的稳态时间；完整拷贝包含整个内核执行。比值仅在同一列的两种资源之间比较。接近 1 的数值应结合原始样本波动解读。</p></section>')
for direction,title in [('read','显存 → SDNN SRAM / cluster LM'),('write','SDNN SRAM / cluster LM → 显存')]:
    rows=[]
    for c in dma:
        s=c['resources']['sdnn-'+direction];k=c['resources']['cluster-'+direction]
        rows.append([f"{c['n']} × {c['n']}",size(c['payload_bytes']),number(s['transfer_us']),number(k['transfer_us']),number(s['GBps']),number(k['GBps']),ratio(s['transfer_us'],k['transfer_us'])])
    sections.append(f'<section id="{direction}"><h2>{title}</h2><p>全部最终结果在同一张 P800（物理 GPU 0）复测。初始化、验证回写及计数输出的固定成本保守上界为 {analysis["fixed_cost_upper_bound"]*100:.3f}%；未使用不同分区时钟相减。</p>')
    sections.append(table(['FP32 矩阵','数据量','SDNN µs','cluster µs','SDNN GB/s','cluster GB/s','SDNN : cluster'],rows));sections.append('</section>')
sections.append('<section id="copy"><h2>各自执行显存拷贝</h2><p>不含主机传输。GPU 时间为预编译、预热后 Graph 重放；端到端时间为普通调用加同步。带宽按 B / t，原始 JSON 另保留读加写 2B / t。</p><label>数据类型 <select id="dtype"><option value="float32">FP32</option><option value="float16">FP16</option><option value="bfloat16">BF16</option><option value="all">全部</option></select></label>')
rows=[];attrs=[]
for c in sorted(copies,key=lambda c:(c['dtype'],c['n'])):
    s=c['resources']['sdnn'];k=c['resources']['cluster'];attrs.append(c['dtype'])
    rows.append([c['dtype'],f"{c['n']} × {c['n']}",size(c['payload_bytes']),number(s['gpu_us']),number(k['gpu_us']),ratio(s['gpu_us'],k['gpu_us']),number(s['payload_GBps']),number(k['payload_GBps']),number(s['e2e_us']),number(k['e2e_us'])])
sections.append(table(['类型','矩阵','数据量','SDNN GPU µs','cluster GPU µs','速度比','SDNN GB/s','cluster GB/s','SDNN E2E µs','cluster E2E µs'],rows,attrs));sections.append('</section>')
sections.append('<section id="relay"><h2>SDNN 与 cluster 之间传递数据</h2><p>路径为 X → 显存中间缓冲区 → Y，共两次拷贝、两次内核执行，使用同一执行流顺序依赖。这里测量的是<b>经显存交换数据</b>，不能据此认定存在或测得 SRAM 与 LM 的直接链路。下表跟随上方数据类型选择。</p>')
rows=[];attrs=[];e2erows=[]
routes=['sdnn->sdnn','cluster->cluster','sdnn->cluster','cluster->sdnn']
for c in sorted(relays,key=lambda c:(c['dtype'],c['n'])):
    v=c['resources'];attrs.append(c['dtype'])
    rows.append([c['dtype'],f"{c['n']} × {c['n']}",size(c['payload_bytes']),*[number(v[k]['gpu_us']) for k in routes],ratio(v[routes[0]]['gpu_us'],v[routes[1]]['gpu_us'])])
    e2erows.append([c['dtype'],f"{c['n']} × {c['n']}",*[number(v[k]['e2e_us']) for k in routes]])
sections.append(table(['类型','矩阵','数据量','S→S µs','C→C µs','S→C µs','C→S µs','S→S : C→C'],rows,attrs))
sections.append('<details><summary>两阶段传递的端到端耗时</summary>'+table(['类型','矩阵','S→S E2E µs','C→C E2E µs','S→C E2E µs','C→S E2E µs'],e2erows,attrs)+'</details></section>')
sections.append('<section id="host"><h2>CPU ↔ P800 显存</h2><p>这是公共主机传输路径，不归属于某个计算引擎。CPU 和设备内存预分配，固定页内存；PCIe 5.0 ×16，NUMA 0。每种方向独立选择分块大小。1 GiB 使用 4 × 256 MiB；原先整块传输出现空 Graph，已因数据校验失败而排除。</p>')
rows=[];endrows=[]
for n in sorted({c['n'] for c in host}):
    h=next(c for c in host if c['n']==n and c['direction']=='h2d');d=next(c for c in host if c['n']==n and c['direction']=='d2h')
    rows.append([f'{n} × {n}',size(h['payload_bytes']),number(h['gpu_us']),number(d['gpu_us']),number(h['GBps']),number(d['GBps']),f"{size(h['chunk_bytes'])} × {h['chunks_per_transfer']}",f"{size(d['chunk_bytes'])} × {d['chunks_per_transfer']}"])
    ph=next(c for c in D['host']['pageable_cases'] if c['n']==n and c['direction']=='h2d');pd=next(c for c in D['host']['pageable_cases'] if c['n']==n and c['direction']=='d2h')
    endrows.append([f'{n} × {n}',number(h['e2e_us']),number(d['e2e_us']),number(ph['e2e']['us']),number(pd['e2e']['us'])])
sections.append(table(['FP32 等效矩阵','数据量','H2D GPU µs','D2H GPU µs','H2D GB/s','D2H GB/s','H2D 分块','D2H 分块'],rows))
sections.append('<details><summary>主机传输端到端耗时：固定页与普通内存</summary><p>普通内存按一次普通调用加同步统计，包含运行时所需的暂存与 CPU 拷贝；未将它冒充为纯 DMA 时间。</p>'+table(['矩阵','固定页 H2D µs','固定页 D2H µs','普通内存 H2D µs','普通内存 D2H µs'],endrows)+'</details></section>')
sections.append(f'''<section id="method"><h2>计时与验证</h2><ul>
<li>未融合计算算子；原生 DMA 只搬运数据。SDNN 使用 SDK 编译结果中的 SRAM DMA 指令，cluster 使用 GM2LM / LM2GM，分别搜索块大小及可用流水配置。</li>
<li>单向最终结果使用 R 次原生循环的 GPU 总时间除以 R。以单轮整个内核耗时 T(1) 为固定成本保守上界，所有点满足 T(1)/T(R) ≤ 0.5%；实际最大 {analysis['fixed_cost_upper_bound']*100:.3f}%。优选配置锁定后独立正反顺序采样，各点 22 个样本取中位数，并保留 P10/P90。</li>
<li>拷贝与两阶段传递使用约 4 ms 累积的 Graph，正反顺序各 7 次，共 14 样本。普通调用加同步的端到端时间单独记录。小尺寸 Graph 次数翻倍校准：拷贝比值 {min(copycal):.4f}–{max(copycal):.4f}，主机传输 {min(hostcal):.4f}–{max(hostcal):.4f}。</li>
<li>保持逐字节校验；输出预填 NaN，Graph 重放前修改源数据；原生 DMA 核对搬运字节计数和独立输入。没有放宽精度阈值。</li>
<li>循环复用缓冲区；小工作集可能驻留 96 MiB L3。GB/s 是逻辑有效载荷带宽，不是硬件计数器测得的 HBM 总流量。这里是该 SDK 和搜索范围内的实测可达水平，并非硬件理论极限证明。</li>
<li>P800 OAM、Torch 2.9.0、FlagTree 0.7.1a1+xpu3.6；使用真实 XPU 驱动及 arch=3。torch.cuda 为兼容接口，计时启用 XPU_EVENT_KL3_ENABLE=1。</li>
</ul></section>''')
sections.append('<section id="audit"><h2>异常记录与文件保留</h2><p>探索 cluster 原生 8 KiB 本地缓冲区配置时，物理 GPU 1、2 出现 NoC 超时；后续初始化进程也停滞，已仅终止本任务进程并避开这两张卡。没有执行设备复位。最终单向结果全部在正常的 GPU 0 完成。最终 xpu-smi 无本任务占用、ECC 计数为 0，这不等于证明 GPU 1、2 的计算功能已恢复，仍需管理员检查。</p><p>服务器没有下载依赖，没有修改系统配置。安装和测试文件仅位于 /data2/zhaoweiming/p800-transfer-20261102；2660 个归档文件已在本地逐一通过 SHA-256 校验。清理状态见下方回执。</p>')
if 'cleanup' in analysis:
    c=analysis['cleanup'];sections.append(f'<p class="success">远端测试目录已删除；释放约 {c["free_space_change_bytes"]/1e9:.2f} GB。保留 /data2/zhaoweiming 父目录及其余文件。</p>')
sections.append('<p><a href="measurements.json">完整原始数值 JSON</a> · <a href="analysis.json">比值与校验摘要</a> · <a href="remote-final-artifacts.tar.gz">原始日志、内核与复现脚本</a> · <a href="local-verification.json">本地逐文件校验回执</a> · <a href="remote-cleanup.json">远端清理回执</a></p></section>')
document='''<!doctype html><html lang="zh-CN"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>P800 · SDNN / cluster 数据搬运实测</title><style>
:root{color-scheme:light}body{margin:0;background:#f5f7fb;color:#182337;font:15px/1.7 system-ui,"Noto Sans CJK SC",sans-serif}main{max-width:1240px;margin:32px auto;padding:0 22px}header,section{background:#fff;border:1px solid #dce3ee;border-radius:12px;padding:24px;margin-bottom:20px}h1{font-size:28px;margin:0}h2{font-size:21px;margin:0 0 12px}p{margin:10px 0}nav{display:flex;flex-wrap:wrap;gap:16px;margin-top:16px}a{color:#175da4}img{width:100%;height:auto}table{border-collapse:collapse;width:100%;font-variant-numeric:tabular-nums;font-size:14px;white-space:nowrap}th,td{padding:9px 12px;text-align:right;border-bottom:1px solid #e4e9f0}th{background:#edf2f8;color:#33445e}th:first-child,td:first-child{text-align:left}tbody tr:nth-child(even){background:#fafbfd}.scroll{overflow-x:auto;margin:14px 0}select{font:inherit;padding:5px 12px;border:1px solid #afbdce;border-radius:6px}summary{cursor:pointer;color:#175da4;font-weight:600}.success{background:#edf8f0;padding:12px;border-radius:8px}small{color:#536176}.muted{color:#536176}[hidden]{display:none!important}</style><main><header><h1>P800 数据搬运实测</h1><p>SDNN 与 cluster 各自调优 · 小矩阵到大矩阵 · 2026-11-02–03</p><small>16×16–16384×16384；显存拷贝含 FP32 / FP16 / BF16，其余按字节量及 FP32 等效矩阵展示。</small><nav><a href="#ratios">速度比</a><a href="#read">单向读</a><a href="#write">单向写</a><a href="#copy">各自拷贝</a><a href="#relay">互相传递</a><a href="#host">主机传输</a><a href="#method">方法</a><a href="#audit">归档与异常</a></nav></header><section><img src="transfer-overview.svg" alt="四类数据搬运的吞吐曲线"></section>'''+''.join(sections)+'''</main><script>const filter=document.getElementById('dtype');function apply(){document.querySelectorAll('[data-dtype]').forEach(r=>r.hidden=filter.value!=='all'&&r.dataset.dtype!==filter.value)}filter.addEventListener('change',apply);apply();</script></html>'''
(ROOT/'results.html').write_text(document)
print(json.dumps(dict(report=str(ROOT/'results.html'),ratio_rows=len(ratios),copy_rows=len(copies),relay_rows=len(relays),dma_results=44,host_results=44),ensure_ascii=False))
