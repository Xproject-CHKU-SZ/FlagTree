"""Verify the delivered P800 image, its actual machine code, and the public F06 matrix."""
import base64
from collections import Counter, defaultdict
from html import escape
import hashlib
import json
import math
from pathlib import Path
import re
import sys

ROOT=Path(__file__).resolve().parent
WORK=ROOT.parents[1]
V6=WORK/'2026-11-08/f06-gap-fix/results.json'
sys.path.insert(0,str(WORK/'2026-11-08/f06-exp-disasm'))
from disassemble import decode

def records(file, label):
    return [json.loads(line[len(label)+1:]) for line in (ROOT/file).read_text(errors='replace').splitlines()
            if line.startswith(label+' ')]

def one(file,label):
    value,=records(file,label)
    return value

def collect():
    attempts=defaultdict(list)
    logs=[ROOT/'public.log', *sorted(ROOT.glob('matrix-*.log')), *sorted(ROOT.glob('retry-*.log'))]
    for log in logs:
        current={}
        for line in log.read_text(errors='replace').splitlines():
            if line.startswith('BENCH '):
                row=json.JSONDecoder().raw_decode(line[6:])[0]
                current[row['event']]=row
            elif line.startswith('END '):
                k=json.loads(line[4:])
                if len(k)==3:k=['add_softmax',*k]
                assert all((r['kind'],r['dtype'],r['shape'])==tuple(k[:3]) for r in current.values())
                attempts[tuple(k[:3])].append(dict(log=log.name,exit=k[-1],**current))
                current={}
    final=[]
    for old in json.loads(V6.read_text())['cases']:
        key=tuple(old[k] for k in ('kind','dtype','shape'))
        trials=attempts[key]
        valid=next((t for t in trials if t['exit']==0 and 'result' in t and 'chosen' in t),None)
        if valid is None: raise ValueError(f'missing {key}')
        begin,r,c=valid['begin'],valid['result'],valid['chosen']
        assert begin['library']=='c808c91fb419053c3fa2749737e0cb83' and begin['fusion'].startswith('/opt/hsp/')
        assert r['route']==c['route'] and math.isclose(r['speedup'],r['event_us']['eager']/r['event_us']['compiled'])
        assert all(len(s)==7 and all(x>0 and math.isfinite(x) for x in s) for s in r['samples'].values())
        final.append(dict(kind=key[0],dtype=key[1],shape=key[2],log=valid['log'],result=r,candidates=c['candidates'],
                          rejected=c['rejected'],previous_route=old['result']['route'],previous_speedup=old['result']['speedup'],
                          attempts=[{'log':t['log'],'exit':t['exit']} for t in trials]))
    assert len(final)==len({(s['kind'],s['dtype'],s['shape']) for s in final})==78
    return final

def linked():
    llvm=WORK/'2026-11-02/p800-transfer/reference/triton/backends/_xtdk_llvm19/lib/libLLVM.so.19.1'
    proof={}
    for data in records('normal.log','LINKED'):
        raw=base64.b64decode(data['data']);assert hashlib.sha256(raw).hexdigest()==data['sha']
        rows=decode(raw,llvm);ops=[r[2] for r in rows]
        pcs=[i for i,s in enumerate(ops) if s.startswith('exp.f.rn')]
        starts=[i for i in pcs if i-1 not in pcs]
        for i in starts:
            regs=[]
            for j in range(16):
                m=re.fullmatch(r'exp\.f\.rn (r\d+), \1',ops[i+j]);assert m
                regs.append(m[1])
                assert ops[i-16+j].startswith('loadli.w '+m[1]+',') and ops[i+16+j].startswith('storeli.w '+m[1]+',')
            assert len(set(regs))==16
        route=data['route']
        assert len(starts)*16==len(pcs)=={'tle':512,'native':128}[route]
        assert data['exp_vectors']==0 and data['lm_asm']*4==len(starts)
        filename=route+'.kl3.asm'
        (ROOT/filename).write_text(''.join(f'{pc:06x}  {word}  {op}\n' for pc,word,op in rows))
        proof[route]=dict(file=filename,first_exp_line=starts[0]+1,groups=len(starts),
                          physical_registers_per_group=16,sha256=data['sha'],llir_batches=data['lm_asm'])
    assert set(proof)=={'tle','native'}
    return proof

def link(href,label):
    return '<a href="'+escape(href,quote=True)+'">'+escape(label)+'</a>'

def table(head,rows):
    return '<div class="scroll"><table><thead><tr>'+''.join('<th>'+x+'</th>' for x in head)+'</tr></thead><tbody>'+''.join('<tr>'+''.join('<td>'+str(x)+'</td>' for x in r)+'</tr>' for r in rows)+'</tbody></table></div>'

def render():
    final=collect();proof=linked()
    before=one('before.log','RESULT');after=one('after.log','RESULT');second=one('normal.log','RESULT')
    check=records('after.log','CHECK');assert len(check)==10
    build=one('after.log','BUILD')
    assert build['lib_sha']=='905ce97e72227490016284052c95f871c1c4b03c7905e5b611afc170d0dc5897'
    assert (ROOT/'image-id.txt').read_text().strip().startswith('sha256:2b0ba48c92f7')
    pred=records('tle-stages.log','STAGE')
    t={s['stage']:s['us'] for s in pred if s['route']=='tle'}
    e={s['stage']:s['us'] for s in pred if s['route']=='eager'}
    native=records('native-stages.log','STAGE')
    same=[one(f,'RESULT') for f in ('prefix2.log','prefix3.log')]
    m=same[0]['median']
    center=one('centering-verified.log','RESULT')
    tree=one('max.log','RESULT')
    reg=(ROOT/'regression.log').read_text()
    assert '229 passed' in reg and '41 subtests passed' in reg and '29 passed' in reg
    routes=Counter(s['result']['route'] for s in final)
    b2=next(s for s in final if (s['kind'],s['dtype'],s['shape'])==('add_softmax','float32','2048x2048'))
    summary=dict(image='zhaoweiming/f06-p800:f06-grouped-exp-20261109-v7',image_id=(ROOT/'image-id.txt').read_text().strip(),
                 library_sha256=build['lib_sha'],machine_code=proof,checks=check,paired_before=before,paired_after=after,
                 second_device=second,stages=pred,native_stages=native,matched_prefixes=same,
                 max_reduction_control=center,max_tree_control=tree,routes=routes,
                 faster_than_eager=sum(s['result']['speedup']>1 for s in final),cases=final)
    (ROOT/'results.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2,allow_nan=False)+'\n')
    fmt=lambda x:f'{x:.2f}'
    html=['''<!doctype html><html lang="zh-CN"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
    <title>F06 分组指数降层与 P800 实测</title><style>body{max-width:1160px;margin:32px auto;padding:0 20px;background:#fbfcfa;color:#21332e;font:16px/1.65 system-ui,sans-serif}h1,h2{line-height:1.3}h2{margin-top:2em}.scroll{overflow-x:auto}table{border-collapse:collapse;min-width:640px;font-variant-numeric:tabular-nums}td,th{border-bottom:1px solid #d6ded8;padding:6px 12px;text-align:left;white-space:nowrap}th{background:#e2ece7}tr:nth-child(even){background:#f1f5f2}a{color:#075a67}code{background:#e6efe9;padding:1px 4px}</style><main><h1>F06 分组指数降层与 P800 实测</h1>''',
    f'<p>个人镜像 <code>{summary["image"]}</code>，镜像指纹 <code>2b0ba48c92f7</code>。KL3 的 FP32 <code>triton_xpu.vexpf</code> 在 XPU→LLVM 时使用每核私有 LM，最多暂存 4 个 16 通道向量（256 字节）。同一函数中的指数复用这个槽。每个向量连续读 16 个标量，执行 16 条 <code>exp.f.rn</code> 并写回。</p>',
    '<p>正常编译的 Inductor 生成源码仍调用指数运算，TLE 仍写 <code>tl.exp</code>。读取实际装载的两份 KL3 二进制，分别验证了 8 组与 32 组完整的读、指数、写序列。'+link('native.kl3.asm','Inductor 机器码')+' · '+link('tle.kl3.asm','TLE 机器码')+' · '+link('normal.log','正常编译及数值校验')+'</p>',
    '<h2>2048×2048 FP32 Add + Softmax</h2><p>同一卡、同一脚本，先测 v6 再测 v7。每次设备图包含 8 个原始调用，随机交错，取 13 批中位数。单位 µs。</p>',
    table(['实现','v6','v7','相对 v6'],[[label,fmt(before['median'][key]),fmt(after['median'][key]),f"{before['median'][key]/after['median'][key]:.2f}×"] for key,label in [('native','Inductor'),('tle','手写 TLE'),('eager','直接 eager')]]),
    f'<p>另一张卡测得 TLE {second["median"]["tle"]:.2f} µs、Inductor {second["median"]["native"]:.2f} µs、eager {second["median"]["eager"]:.2f} µs。在正式自动选择入口，大尺寸 B2 选中 <code>{b2["result"]["route"]}</code>，实测 {b2["result"]["speedup"]:.3f}×。五组输入覆盖新随机样本、大动态范围、整体平移、NaN、正无穷与全负无穷行。'+link('before.log','v6 配对原始记录')+' · '+link('after.log','v7 配对原始记录')+'</p>',
    '<h2>TLE 剩余差距</h2>',
    table(['同卡设备图','TLE µs','eager µs','相差 µs'],[[lab,fmt(t[k]),fmt(e[k]),fmt(t[k]-e[k])] for k,lab in [('full','完整 Add + Softmax'),('added','输入已加好 bias，仅做 Softmax')]]),
    f'<p>同一对照中，完整差距 {t["full"]-e["full"]:.2f} µs。预加 bias 后留下 {t["added"]-e["added"]:.2f} µs，相差的 {(t["full"]-t["added"])-(e["full"]-e["added"]):.2f} µs 是融合 bias 及随之改变的访存和寄存器安排的边际开销。'+link('tle-stages.log','设备图阶段样本')+'</p>',
    '<p>以下比较相同的预加 bias 输入，输出逐阶段与参考值核对。用预分配输出随机交错提交 48 次、在批边界同步，每项取 15 批中位数。TLE 各个前缀单独编译。厂商副本的复制前缀保留原始 DMA，中心化与指数前缀保留跨核同步及末尾的跨核归约，跳过本地行和与归一化扫描。相邻差值包含调度和数据搬运的变化。</p>',
    table(['输出到哪一步','TLE µs','厂商 µs','累计差值 µs'],[[label,fmt(m['tle_preadded_'+k]),fmt(m['vendor_'+k]),fmt(m['tle_preadded_'+k]-m['vendor_'+k])] for k,label in [('copy','复制输入'),('center','减去行最大值'),('exp_result','求指数'),('full','求和并归一化')]]),
    '<p>形成中心化结果时差距最大。完整 TLE 用固定为 1 的真实行最大值替代归约后，Softmax 从 '+fmt(center['median']['original_full'])+' 降到 '+fmt(center['median']['known_max_full'])+' µs。只输出中心化张量的同一对照从 '+fmt(center['median']['original_center'])+' 降到 '+fmt(center['median']['known_max_center'])+' µs，汇编中编译器标注的暂存/重载位置从各 30 处降到 0。位置数是静态计数。强制从 LM 重读输入未取得明显收益。</p>',
    '<p>分别只改横向最大值归约树、向量最大值树及二者组合，完整 TLE 依次为 '+', '.join(fmt(tree['median'][k]) for k in ['horizontal','balanced','both'])+' µs，同轮基线为 '+fmt(tree['median']['original'])+' µs。当前证据将问题定位到跨整行归约的值保存、中心化和访存，尚不能把差距换算成某条指令的独立周期。</p>',
    '<p>在两份最终二进制副本中只跳过单组指数指令，回传寄存器中的原值，两实现均产生相同定义的“中心化输入除以行和”。这一改动使 TLE 的预加 bias 路径省 '+fmt(m['tle_preadded_full']-m['tle_preadded_skip_exp'])+' µs，厂商省 '+fmt(m['vendor_full']-m['vendor_skip_exp'])+' µs。跳过整组读写的输出与只跳过指数的输出在各自实现中逐位一致。直接从厂商的第一个跨核阶段跳到输出写回曾导致数值不符，该版本已从归因中剔除。'+link('prefix2.log','第一张卡')+' · '+link('prefix3.log','第二张卡')+' · '+link('centering-verified.log','行最大值及暂存实验')+' · '+link('max.log','归约树对照')+'</p>',
    '<h2>正式入口回归</h2><p>13 个模板、两种精度、三个尺寸。实际路由分布为 '+escape('，'.join(f'{k} {v} 项' for k,v in sorted(routes.items())))+'。同轮 eager 时间除以编译模块时间为加速比。数字接近 1 的差别可能随复测变化。FP32 atol/rtol 为 0.0003，FP16 为 0.003。软件测试通过 229 项及 41 个子测试，P800 设备测试通过 29 项。'+link('regression.log','回归日志')+'</p>']
    for dt in ('float32','float16'):
        html+=['<h3>'+dt+'</h3>',table(['模板','形状','实际路由','eager µs','模块 µs','v7 / 同轮 eager 加速比','v6 加速比'],
               [[s['kind'],s['shape'],s['result']['route'],fmt(s['result']['event_us']['eager']),fmt(s['result']['event_us']['compiled']),fmt(s['result']['speedup'])+'×',fmt(s['previous_speedup'])+'×'] for s in final if s['dtype']==dt])]
    html+=['<p>'+link('results.json','完整数据、失败重试与候选')+' · '+link('../../2026-11-08/f06-gap-fix/F06双路径实测与耗时定位.html','v6 对照报告')+'</p></main></html>']
    (ROOT/'F06分组指数修复与余差定位.html').write_text('\n'.join(html))
    print('verified',len(final),routes,summary['faster_than_eager'],proof)

if __name__=='__main__':render()
