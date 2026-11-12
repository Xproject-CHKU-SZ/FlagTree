from pathlib import Path
import json,statistics
r=Path(__file__).resolve().parent;rows=json.loads((r/'comparison.json').read_text());primary=[x for x in rows if x['primary']];timed=[x for x in primary if x['GPU_us'] is not None]
summary=json.loads((r/'summary.json').read_text());print('SUMMARY',summary)
assert summary['all_gates_passed']==4 and summary['parallel_timed']==28 and summary['targeted_special_values_failures']==0,summary
assert len([x for x in timed if x['dtype'] in ('float32','bfloat16')])==24
assert len([x for x in rows if x['route']=='inductor' and x['dtype']=='bfloat16' and x['GPU_us'] is None])==12
for dt in ('float32','float16','bfloat16'):
 a=[x for x in timed if x['dtype']==dt]
 for ref in ('serial','old_dual','eager','inductor'):
  for metric in ('GPU','E2E'):
   xs=[x['vs_'+ref+'_'+metric] for x in a if x['vs_'+ref+'_'+metric] is not None]
   if xs:print(dt,ref,metric,min(xs),max(xs))
for k in (75,76,199,200,205,206):
 x=next(x for x in primary if x['case']==k);print('EXAMPLE',json.dumps(x))
text=['','## 原因与验收','', '单乘的整数分类没有落到 SDNN 向量乘法单元，而是与边界掩码一起进入一个控制核的逐元素循环。原生 1×128／1×256 的单行布局不满足旧有“按行分给八核”的条件，所以原并行 pass 没有命中。FP32/FP16 的循环每元素包含 26 个算术/分类 IR 操作、4 次读取和1次写入；BF16 的同一循环还包含舍入处理。这里是 IR 操作统计，不是硬件指令数或算术执行周期。','', '新实验保持一次乘法，将连续列按完整缓存行分给同一 SDNN 内的八个控制核，每核处理16或32个元素。它降低了串行循环长度；仍保留输入就绪和输出汇合两次同步，原生产者/消费者事件和内存屏障未删减。测得的改善是整个调用的净收益，包含循环、访存和同步变化，不能当作纯算术周期占比。','', '也试过“有限输入直接取原乘积”的分支。两个小矩阵与一个大矩阵预检的 GPU 时间增加约3%–9%，因此最终实验使用不加该分支的按列并行版本。两个预检的结果和源码均保留在归档中。','', '本轮并行版与串行单乘的 status、eligible、stress、special 记录逐项相同。4例小矩阵FP16通过完整验收；24例FP32/BF16通过普通有限值检查，但既有扩展特殊值失败仍在；8例较大FP16未通过原有限值阈值，未给出候选性能倍率。BF16的原生Inductor有限值验收失败，相关倍率留空。默认策略和精度阈值未改。','', '所有已进入性能计时的候选均经过新输入、输出非复用、输入不可变、CUDA Graph数据新鲜性与计时前后绑定二进制一致性检查。原始数值见 comparison.json；单卡、串行执行和文件校验记录见 verification.json。']
assert not json.loads((r/'summary.json').read_text())['precision_differences_from_serial']
with (r/'results.md').open('a') as f:f.write('\n'.join(text)+'\n')
(r/'status.json').write_text(json.dumps(dict(state='completed_and_cleaned' if (r/'cleanup-receipt.json').exists() else 'completed_local_verified',physical_gpu=7,cases=36),indent=2))
