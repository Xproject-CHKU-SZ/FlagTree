"""Assemble the public-route table and device-stage diagnostics from final-image logs."""
from collections import Counter, defaultdict
from html import escape
import itertools
import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parent
BASE = ROOT.parent/'f06-repair'/'results.json'
SHAPES = ['64x1024','512x1024','2048x2048']
EVENT = json.JSONDecoder()


def read_events(path, marker):
    for line in path.read_text(errors='replace').splitlines():
        if line.startswith(marker):
            yield EVENT.raw_decode(line[len(marker):])[0]


def collect():
    attempts=defaultdict(list)
    for path in sorted(ROOT.glob('v6-full*.log'))+sorted(ROOT.glob('v6-retry*.log')):
        current={}
        for line in path.read_text(errors='replace').splitlines():
            if line.startswith('BENCH '):
                row=EVENT.raw_decode(line[6:])[0]
                current[row['event']]=row
            elif line.startswith('END '):
                kind,dt,shape,status=json.loads(line[4:])
                k=(kind,dt,shape)
                assert all((v['kind'],v['dtype'],v['shape'])==k for v in current.values())
                attempts[k].append(dict(log=path.name,exit=status,**current))
                current={}
    return attempts


def link(name, label=None):
    return '<a href="'+escape(str(name),quote=True)+'">'+escape(label or str(name))+'</a>'


def table(head, data):
    return '<div class="scroll"><table><thead><tr>'+''.join('<th>'+h+'</th>' for h in head)+'</tr></thead><tbody>'+''.join('<tr>'+''.join('<td>'+str(c)+'</td>' for c in row)+'</tr>' for row in data)+'</tbody></table></div>'


def raw_stage(path):
    return list(read_events(ROOT/path,'STAGE ')) if (ROOT/path).exists() else []


def metric(v):
    return '—' if v is None else f'{v:.2f}'


def route(r):
    detail=[]
    for s in r['stages']:
        detail.append(s.get('route') or '+'.join(k[0] for k in s.get('kernels',[])) or str(s.get('resource') or ''))
    return escape(r['route']+(' · '+', '.join(detail) if detail else ''))


def render():
    base=json.loads(BASE.read_text())
    attempts=collect()
    final=[]
    for old in base['cases']:
        k=tuple(old[i] for i in ('kind','dtype','shape'))
        runs=attempts.get(k,[])
        successes=[r for r in runs if r['exit']==0 and 'result' in r and 'chosen' in r]
        if not successes:
            raise ValueError(f'missing successful final-image run {k}')
        trial=successes[0]
        b,c,r=trial['begin'],trial['chosen'],trial['result']
        assert b['library']=='26311df66d9afbad41cf6784adadf924' and b['fusion'].startswith('/opt/hsp/')
        assert r['route']==c['route'] and math.isclose(r['speedup'],r['event_us']['eager']/r['event_us']['compiled'])
        assert all(math.isfinite(v) and v>0 for s in r['samples'].values() for v in s)
        final.append(dict(kind=k[0],dtype=k[1],shape=k[2],log=trial['log'],result=r,candidates=c['candidates'],
                          rejections=c['rejected'],fallback_reason=c.get('fallback_reason'),old_route=old['route'],
                          old_speedup=old['speedup'],attempts=[{'log':t['log'],'exit':t['exit']} for t in runs]))
    assert len(final)==len({(r['kind'],r['dtype'],r['shape']) for r in final})==78
    final_stages=raw_stage('v6-row-qa.log')+raw_stage('v6-stages-native.log')+raw_stage('v6-stages-tle.log')
    prev_stages=raw_stage('stages-native.log')+raw_stage('stages-tle.log')
    entries=[]
    for entrypath in (ROOT/'v6-entry-split.log', ROOT/'v6-supplement.log'):
        if not entrypath.exists():
            continue
        for line in entrypath.read_text(errors='replace').splitlines():
            if line.startswith('ENTRY '):entries.append(json.loads(line[6:]))
            if line.startswith('EVENT ') and entries:entries[-1]['times']=json.loads(line[6:])
    route_count=Counter(a['result']['route'] for a in final)
    wins=sum(a['result']['speedup']>1 for a in final)
    pack=dict(image='zhaoweiming/f06-p800:f06-repair-20261109-v6',image_id=(ROOT/'v6-image-id.txt').read_text().strip(),
              compiler_md5='26311df66d9afbad41cf6784adadf924',public_metric='eager_us / compiled_us, paired ordinary module event batches',
              cases=final,route_counts=route_count,public_speedups_above_one=wins,final_stages=final_stages,
              previous_stage_probes=prev_stages,entry_probes=entries)
    (ROOT/'results.json').write_text(json.dumps(pack,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
    def get_stage(rows,route,stage):
        a=[s['us'] for s in rows if s['route']==route and s['stage']==stage]
        return a[-1] if a else None
    stage_rows=[]
    for key,label in [('full','原始 A 和 bias'),('added','预先加好 bias'),('shifted','预先减去行最大值'),('exps','预先求完指数'),('copy','预先归一化，仅复制')]:
        stage_rows.append([label]+[metric(get_stage(rows,k,key)) for rows,k in ((prev_stages,'native'),(final_stages,'native'),(final_stages,'tle'))])
    before=next(read_events(ROOT/'native-v4.log','EVENT '))['median']['native_prepared']
    after=next(read_events(ROOT/'v6-native-public.log','EVENT '))['median']['native_prepared']
    b2=next(i for i in final if (i['kind'],i['dtype'],i['shape'])==('add_softmax','float32','2048x2048'))
    public=b2['result']
    def at(rows, r, stage):
        found=get_stage(rows,r,stage)
        if found is None:
            raise ValueError(f'missing {r} {stage} replay')
        return found
    nfull=at(final_stages,'native','full')
    trow=at(final_stages,'tle','added')
    eonly=at(final_stages,'eager','added')
    tfull=at(final_stages,'tle','full')
    efull=at(final_stages,'eager','full')
    texp=at(final_stages,'tle','shifted')-at(final_stages,'tle','exps')
    nadd=nfull-at(final_stages,'native','added')
    report=['''<!doctype html><html lang="zh-CN"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>F06 双路径实测与耗时定位</title><style>body{color:#203033;background:#fafbf8;font:16px/1.65 system-ui,sans-serif;margin:30px auto;max-width:1200px;padding:0 20px}h1,h2{line-height:1.3}h2{margin:2em 0 .5em}td,th{text-align:left;padding:.45em .7em;border-bottom:1px solid #c8d4ce;white-space:nowrap}th{background:#e3ece6}tr:nth-child(even){background:#f2f6f2}.scroll{overflow-x:auto}table{border-collapse:collapse;width:100%;font-variant-numeric:tabular-nums}a{color:#075e69}code{background:#eaf0eb;padding:.1em .3em}li{margin:.3em 0}details{margin:1em 0}</style>
<h1>F06 双路径实测与耗时定位</h1>''',
    f'<p>P800-152，个人 Docker <code>{pack["image"]}</code>，镜像 <code>f7ecd7703ad8</code>。13 个模板、两种精度、三个尺寸，共 78 项。正式入口中有 {wins} 项的实测加速比大于 1。实际选择 '+escape('，'.join(f'{r} {n} 项' for r,n in sorted(route_count.items())))+'。</p>',
    '<h2>B2 · 2048×2048 FP32 Add + Softmax</h2>',
    f'<p>正式入口实际选中 <code>{public["route"]}</code>。直接 eager {public["event_us"]["eager"]:.2f} µs，编译模块 {public["event_us"]["compiled"]:.2f} µs，加速比 {public["speedup"]:.3f}×。'
    '单独测融合候选用于定位性能，与回退后的正式结果分开记录。</p>',
    '<p>以下为设备图回放中位数，单位 µs。每次捕获 8 个调用，至少 7 批有效样本。每个变体的输出与同一 eager 结果核对。中间值在计时前生成。相邻行相减衡量删去某段后的边际变化，包含编译器重新安排寄存器、访存和指令的影响。</p>',
    table(['送入内核的数据','原生 Inductor · 固定 8 行、通用 max2','原生 Inductor · 最终','手写 TLE · 最终'],stage_rows),
    f'<p>相同脚本、相同已编译调用口径下，原生 Inductor 从 v4 的 {before:.2f} µs 降到 v6 的 {after:.2f} µs，加速 {before/after:.2f}×。'
    +link('native-v4.log','v4 原始运行')+' · '+link('v6-native-public.log','v6 原始运行')+'</p>',
    '<p>同卡 eager 对照中，Add + Softmax 合计 '+metric(get_stage(final_stages,'eager','full') or get_stage(prev_stages,'eager','full'))+' µs，预加 bias 后的厂商 Softmax '+metric(get_stage(final_stages,'eager','added') or get_stage(prev_stages,'eager','added'))+' µs。'
    '原生路径由 Inductor 生成索引、访存、归约与写回。固定分块消除了多余掩码，再将只用于稳定 Softmax 的最大值映射到 KL3 指令。手写路径采用每行一次倒数、向量乘法和 TLE 全行块。普通标量比较保留严格选择语义。</p>',
    f'<p>完整 TLE 比 eager 多 {tfull-efull:.2f} µs。双方预加 bias 后仍相差 {trow-eonly:.2f} µs，差距主要留在 Softmax 主体。TLE 中提前给定指数值可省 {texp:.2f} µs；这段包含通道提取、指数和结果交接。'
    f'原生路径在固定调度上单独替换 max2 后完整时间由约 446 降至 {nfull:.2f} µs。最终原生路径跳过加 bias 后省 {nadd:.2f} µs，这包含广播、数据搬运和寄存器布局变化。'
    '只复制的原生变体甚至慢于带求和的变体，所以不能把各差值解释为可独立相加的硬件周期。</p>',
    '<p>eager 二进制中能看到独立寄存器上的标量 <code>exp.f.rn</code>、向量最大值和组内移位。TLE 的实际汇编在指数段反复使用 vextracti.f 从向量取通道、exp.f.rn 求指数、vor.u.mh 把标量放回向量。该内核静态出现 512 处 exp 和 544 处 vextracti.f。设备计时能定位到这一整段。厂商内核各阶段的动态周期仍未知。</p>',
    '<p>'+link('native_final.py','实际 Inductor 生成源码')+' · '+link('native_final.kl3.asm','最终 Inductor 汇编')+' · '+link('tle_final.kl3.asm','最终 TLE 汇编')+'</p>',
    '<p>'+link('v6-row-qa.log','最终二进制及特殊值')+' · '+link('v6-stages-native.log','最终原生阶段')+' · '+link('v6-stages-tle.log','最终 TLE 及同卡 eager 阶段')+' · '+link('native-max-ab.log','保持调度不变的最大值对照')+' · '+link('stages-tle.log','设备阶段与 eager')+' · '+link('../f06-exp-disasm/eager-softmax-f32.kl3.asm','eager 最终设备反汇编')+' · '+link('../f06-exp-disasm/B2反汇编与耗时归因.html','向量指数替换实验')+'</p>',
    '<h2>正式调用的开销</h2><p>以下是同一轮校准留下的真实候选，交错计时，单位 µs。包含新输出分配。回退 eager 的正式入口也执行模块调用及编译守卫。小尺寸仿射 LayerNorm 的候选在接近常数的行上未通过与 eager 的容差检查；正式入口保留回退。</p>',
    table(['模板','精度 / 形状','路由','直接 eager','正式入口','直接调用已选函数','已缓存完整守卫'],[[e['kind'],e['dtype']+' '+str(e['shape']),e['selected']]+[metric(e['times']['median'].get(k)) for k in ('eager_module','public','selected')]+['是' if e['warmed'] else '否'] for e in entries if 'times' in e]),
    '<p>'+link('v6-entry-split.log','LayerNorm 和矩阵 SiLU 调用分层')+' · '+link('v6-supplement.log','GELU 调用分层及边界回归')+'</p>',
    '<h2>78 项正式路由</h2><p>对同一模块通过 <code>torch.compile</code> 校准并热身，交错测 7 批 × 40 次。加速比为同轮 eager 耗时除以正式入口耗时。MatMul 的 K=64。FP32 用 atol=rtol=0.0003，FP16 用 0.003；复查两组输入、输出类型、形状与旧输出保持。接近 1 的小差异可能随复测变化。</p>']
    for dt in ('float32','float16'):
        report.append('<h3>'+dt+'</h3>')
        rows=[]
        for item in final:
            if item['dtype']!=dt:continue
            r=item['result']
            rows.append([item['kind'],item['shape'],route(r),metric(r['event_us']['eager']),metric(r['event_us']['compiled']),
                         f"<b>{r['speedup']:.2f}×</b>",f"{item['old_speedup']:.2f}×",link(item['log'],'原始记录')])
        report.append(table(['模板','形状','实际路由 / 内核','eager µs','正式入口 µs','v6 加速比','v4 加速比','记录'],rows))
    report.append('<h2>正确性与复测范围</h2><p>软件回归 229 项通过，另有 41 个子测试通过。P800 位级比较、广播与边界设备测试 27 项通过。'
                  '最终原生 B2 核对了随机、大值域、整行偏移、NaN、正无穷与全负无穷；测得最大有限值绝对误差为 2.39×10⁻⁷ 以内。'
                  '真实完整守卫覆盖形状、步长、类型、模块状态、钩子、重置和旧输出保持。部分冷编译超时或设备查询失败的组合另开个人容器复跑。每一行使用首个有效主测结果，缺测时才采用成功的重试。</p>')
    report.append('<h2>独立候选设备时间</h2><p>以下保留每一项通过精度与设备验证的候选图回放中位数（µs）。cluster、sdnn 表示执行资源，括号内标出能从记录确认的生成方式。路由先要求普通调用在两轮交错计时中都达到 3% 收益，再从合格候选中按设备回放中位数选择。通过正确性检查但普通调用没有稳定收益的候选也列出。</p>')
    def label(c):
        reg=[r.get('route') for r in c.get('regions',[]) if r.get('route')]
        return c['name']+(' ('+'+'.join(reg)+')' if reg else '')
    report.append(table(['模板','精度','形状','通过验证的候选及回放时间 µs'],[[i['kind'],i['dtype'],i['shape'],
                    '<br>'.join(escape(label(c))+' '+metric(c.get('captured_us')) for c in i['candidates'] if c['status']=='passed')] for i in final]))
    report.append('<p>'+link('results.json','完整样本、拒绝原因及重试')+' · '+link('v6-unit.log','回归日志')+' · '+link('public_benchmark.py','正式入口测试')+' · '+link('b2_stages.py','逐段探针')+' · '+link('../f06-week-audit/F06本周完整复核.html','本周复核')+' · '+link('../../2026-11-05/f06-p800-mulsum-plans/F06周报-20261107-完整汇总版.md','原周报')+' · '+link('../../../../P800-document/P800架构说明.md','P800 硬件与手册索引')+' · '+link('../f06-repair/F06修复后实际路由与加速比.html','v4 历史结果')+'</p></html>')
    (ROOT/'F06双路径实测与耗时定位.html').write_text('\n'.join(report))
    print('cases',len(final),'wins',wins,'routes',route_count)

if __name__=='__main__':
    render()
