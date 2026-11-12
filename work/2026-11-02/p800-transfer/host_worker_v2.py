"""Tune supported memcpy node sizes, validate replay before any timing."""
from transfer_common import *
import traceback

out,report=initialize(0,'host-transfers-v2')
try:
    import torch
    report.update(operation='CPU<->P800 memory',cases=[],pageable_cases=[],candidates=[])
    pci=Path('/sys/bus/pci/devices/0000:03:00.0')
    report['pci']={k:(pci/k).read_text().strip() for k in ['current_link_speed','current_link_width','max_link_speed','max_link_width','numa_node'] if (pci/k).exists()}
    for n in SIZES:
        payload=4*n*n
        torch.manual_seed(110+n)
        source=torch.rand(n*n,dtype=torch.float32)
        pinned=torch.empty_like(source,pin_memory=True);pinned.copy_(source)
        device=source.cuda();other=torch.empty_like(source,pin_memory=True)
        assert pinned.is_pinned() and other.is_pinned()
        if 'physical_proof' not in report:report['physical_proof']=physical_proof(0)
        chunks=sorted({min(payload,c) for c in [2**20,16*2**20,64*2**20,256*2**20]})
        if payload<=256*2**20:chunks=sorted(set(chunks+[payload]))
        winners={}
        for direction in ['h2d','d2h']:
            contenders=[]
            for chunk in chunks:
                record=dict(n=n,direction=direction,payload_bytes=payload,chunk_bytes=chunk,status='running')
                report['candidates'].append(record);save(out,report)
                try:
                    src,dst=(pinned,device) if direction=='h2d' else (device,other)
                    pieces=[(dst[i:i+chunk//4],src[i:i+chunk//4]) for i in range(0,n*n,chunk//4)]
                    def fn(pieces=pieces):
                        for dst,src in pieces:dst.copy_(src,non_blocking=True)
                    fn();torch.cuda.synchronize();exact(dst,source)
                    graph=capture(fn,4)
                    # Check updated contents at the captured addresses BEFORE
                    # a timing estimate can mistakenly treat an empty graph as fast.
                    source.mul_(-1).add_(.125)
                    if direction=='h2d':pinned.copy_(source);device.fill_(float('nan'))
                    else:device.copy_(source);other.fill_(float('nan'))
                    torch.cuda.synchronize();graph.replay();torch.cuda.synchronize();exact(dst,source)
                    record['fresh_data_before_timing']=True
                    quick=measure(graph,4,3);del graph
                    count=batch_size(quick['gpu_us']);graph=capture(fn,count)
                    tune=measure(graph,count,5);del graph
                    record.update(status='passed',tuning=tune,chunks_per_transfer=len(pieces))
                    contenders.append((tune['gpu_us'],record,fn))
                except Exception as exc:record.update(status='failed',error=str(exc),traceback=traceback.format_exc())
                save(out,report)
            assert contenders,(n,direction)
            estimate,rec,fn=min(contenders,key=lambda c:c[0])
            count=batch_size(estimate);g=capture(fn,count)
            winners[direction]=(rec,fn,g,count)
            # Keep the other direction's source current while tuning the next one.
            pinned.copy_(source);device.copy_(source);torch.cuda.synchronize()
        rounds=[]
        for order in [['h2d','d2h'],['d2h','h2d']]:
            for direction in order:
                rec,fn,g,count=winners[direction]
                rounds.append(dict(direction=direction,timing=measure(g,count),e2e=end_to_end(fn)))
        for direction,(winner,fn,g,count) in winners.items():
            times=[v for r in rounds if r['direction']==direction for v in r['timing']['samples_us']]
            e2e=[v for r in rounds if r['direction']==direction for v in r['e2e']['samples_us']]
            us=statistics.median(times)
            rec=dict(n=n,dtype='float32',payload_bytes=payload,direction=direction,pinned=True,
                gpu_us=us,e2e_us=statistics.median(e2e),GBps=payload/us/1000,chunk_bytes=winner['chunk_bytes'],
                chunks_per_transfer=winner['chunks_per_transfer'],rounds=[r for r in rounds if r['direction']==direction])
            if us<30:
                twice=capture(fn,count*2);first=measure(g,count,3);second=measure(twice,count*2,3)
                rec['calibration']=dict(base=first,doubled=second,ratio=second['gpu_us']/first['gpu_us']);del twice
            source.mul_(-1).add_(.125)
            if direction=='h2d':pinned.copy_(source);device.fill_(float('nan'))
            else:device.copy_(source);other.fill_(float('nan'))
            torch.cuda.synchronize();g.replay();torch.cuda.synchronize()
            rec['fresh_data']=exact(device if direction=='h2d' else other,source)
            report['cases'].append(rec);save(out,report)
        del winners,contenders,fn,g,src,dst,pieces,device,pinned,other,source
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
