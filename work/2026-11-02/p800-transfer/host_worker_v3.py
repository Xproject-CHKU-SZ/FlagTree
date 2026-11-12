"""Transfer using independently pinned, graph-validated chunks of <=256 MiB."""
from transfer_common import *
import traceback

out,report=initialize(0,'host-transfers-v3')
try:
    import torch
    report.update(operation='CPU<->P800 memory',cases=[],pageable_cases=[],candidates=[])
    pci=Path('/sys/bus/pci/devices/0000:03:00.0')
    report['pci']={k:(pci/k).read_text().strip() for k in ['current_link_speed','current_link_width','max_link_speed','max_link_width','numa_node'] if (pci/k).exists()}
    for n in SIZES:
        payload=4*n*n;torch.manual_seed(110+n)
        source=torch.rand(n*n,dtype=torch.float32);device=source.cuda()
        if 'physical_proof' not in report:report['physical_proof']=physical_proof(0)
        chunks=sorted({min(payload,c) for c in [2**20,16*2**20,64*2**20,256*2**20]})

        def context(direction,chunk):
            offsets=list(range(0,n*n,chunk//4))
            host=[torch.empty(min(chunk//4,n*n-i),dtype=torch.float32,pin_memory=True) for i in offsets]
            assert all(t.is_pinned() for t in host)
            views=[device[i:i+t.numel()] for i,t in zip(offsets,host)]
            pairs=list(zip(views,host)) if direction=='h2d' else list(zip(host,views))
            def fn():
                for dst,src in pairs:dst.copy_(src,non_blocking=True)
            return dict(direction=direction,chunk=chunk,offsets=offsets,host=host,fn=fn)

        def prepare(ctx,poison=False):
            if ctx['direction']=='h2d':
                for i,h in zip(ctx['offsets'],ctx['host']):h.copy_(source[i:i+h.numel()])
                if poison:device.fill_(float('nan'))
            else:
                device.copy_(source)
                if poison:
                    for h in ctx['host']:h.fill_(float('nan'))
            torch.cuda.synchronize()

        def check(ctx):
            if ctx['direction']=='h2d':exact(device,source)
            else:
                for i,h in zip(ctx['offsets'],ctx['host']):exact(h,source[i:i+h.numel()])

        winners={}
        for direction in ['h2d','d2h']:
            contenders=[]
            for chunk in chunks:
                rec=dict(n=n,direction=direction,payload_bytes=payload,chunk_bytes=chunk,status='running')
                report['candidates'].append(rec);report['stage']=f'{n}-{direction}-{chunk}';save(out,report)
                try:
                    ctx=context(direction,chunk);prepare(ctx,True);ctx['fn']();torch.cuda.synchronize();check(ctx)
                    graph=capture(ctx['fn'],4)
                    source.mul_(-1).add_(.125);prepare(ctx,True)
                    graph.replay();torch.cuda.synchronize();check(ctx)
                    rec['fresh_data_before_timing']=True
                    quick=measure(graph,4,3);del graph
                    count=batch_size(quick['gpu_us']);graph=capture(ctx['fn'],count)
                    tune=measure(graph,count,5);del graph
                    rec.update(status='passed',tuning=tune,chunks_per_transfer=len(ctx['host']))
                    contenders.append((tune['gpu_us'],rec,ctx))
                except Exception as exc:rec.update(status='failed',error=str(exc),traceback=traceback.format_exc())
                save(out,report)
            assert contenders,(n,direction)
            estimate,rec,ctx=min(contenders,key=lambda c:c[0]);count=batch_size(estimate)
            prepare(ctx);graph=capture(ctx['fn'],count)
            winners[direction]=(rec,ctx,graph,count)
        for _,ctx,_,_ in winners.values():prepare(ctx)
        rounds=[]
        for order in [['h2d','d2h'],['d2h','h2d']]:
            for direction in order:
                rec,ctx,g,count=winners[direction]
                rounds.append(dict(direction=direction,timing=measure(g,count),e2e=end_to_end(ctx['fn'])))
        for direction,(winner,ctx,g,count) in winners.items():
            times=[v for r in rounds if r['direction']==direction for v in r['timing']['samples_us']]
            e2e=[v for r in rounds if r['direction']==direction for v in r['e2e']['samples_us']]
            us=statistics.median(times)
            rec=dict(n=n,dtype='float32',payload_bytes=payload,direction=direction,pinned=True,
                gpu_us=us,e2e_us=statistics.median(e2e),GBps=payload/us/1000,chunk_bytes=winner['chunk_bytes'],
                chunks_per_transfer=winner['chunks_per_transfer'],rounds=[r for r in rounds if r['direction']==direction])
            if us<30:
                twice=capture(ctx['fn'],count*2);first=measure(g,count,3);second=measure(twice,count*2,3)
                rec['calibration']=dict(base=first,doubled=second,ratio=second['gpu_us']/first['gpu_us']);del twice
            source.mul_(-1).add_(.125);prepare(ctx,True);g.replay();torch.cuda.synchronize();check(ctx)
            rec['fresh_data']=dict(bitwise_equal=True,bytes=payload)
            report['cases'].append(rec);save(out,report)
        del winners,contenders,ctx,g,graph,device,source
        torch.cuda.empty_cache()
        source=torch.rand(n*n,dtype=torch.float32);dest=torch.empty_like(source);device=source.cuda()
        for direction,fn in [('h2d',lambda:device.copy_(source,non_blocking=True)),('d2h',lambda:dest.copy_(device,non_blocking=True))]:
            fn();torch.cuda.synchronize();exact(device if direction=='h2d' else dest,source)
            e2e=end_to_end(fn,11)
            report['pageable_cases'].append(dict(n=n,payload_bytes=payload,direction=direction,pinned=False,
                e2e=e2e,e2e_GBps=payload/e2e['us']/1000,bitwise_equal=True))
        del source,dest,device
        torch.cuda.empty_cache();save(out,report)
    report.update(status='complete',finished_at=time.time())
except Exception as exc:
    report.update(status='failed',error=str(exc),traceback=traceback.format_exc());raise
finally:save(out,report)
