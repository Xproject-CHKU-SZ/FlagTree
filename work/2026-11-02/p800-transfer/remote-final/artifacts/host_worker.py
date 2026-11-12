"""Common host/device DMA path: pinned graph timing, pageable E2E separately."""
from transfer_common import *
import traceback

out,report=initialize(0,'host-transfers')
try:
    import torch
    report.update(operation='CPU<->P800 memory',cases=[],pageable_cases=[])
    pci=Path('/sys/bus/pci/devices/0000:03:00.0')
    report['pci']={k:(pci/k).read_text().strip() for k in ['current_link_speed','current_link_width','max_link_speed','max_link_width','numa_node'] if (pci/k).exists()}
    for n in SIZES:
        torch.manual_seed(110+n)
        source=torch.rand(n*n,dtype=torch.float32)
        pinned=torch.empty_like(source,pin_memory=True);pinned.copy_(source)
        device=source.cuda();other=torch.empty_like(source,pin_memory=True)
        assert pinned.is_pinned() and other.is_pinned()
        if 'physical_proof' not in report:report['physical_proof']=physical_proof(0)
        functions={'h2d':lambda:device.copy_(pinned,non_blocking=True),
                   'd2h':lambda:other.copy_(device,non_blocking=True)}
        graphs={};counts={};rounds=[]
        for direction,fn in functions.items():
            fn();torch.cuda.synchronize()
            exact(device if direction=='h2d' else other,source)
            quick=capture(fn,4);estimate=measure(quick,4,3)['gpu_us'];del quick
            count=batch_size(estimate);graphs[direction]=capture(fn,count);counts[direction]=count
        for order in [['h2d','d2h'],['d2h','h2d']]:
            for direction in order:
                rounds.append(dict(direction=direction,timing=measure(graphs[direction],counts[direction]),
                                   e2e=end_to_end(functions[direction])))
        for direction in functions:
            times=[v for r in rounds if r['direction']==direction for v in r['timing']['samples_us']]
            e2e=[v for r in rounds if r['direction']==direction for v in r['e2e']['samples_us']]
            us=statistics.median(times);payload=n*n*4
            rec=dict(n=n,dtype='float32',payload_bytes=payload,direction=direction,pinned=True,
                     gpu_us=us,e2e_us=statistics.median(e2e),GBps=payload/us/1000,
                     rounds=[r for r in rounds if r['direction']==direction])
            if us<30:
                doubled=capture(functions[direction],counts[direction]*2)
                first=measure(graphs[direction],counts[direction],3);second=measure(doubled,counts[direction]*2,3)
                rec['calibration']=dict(base=first,doubled=second,ratio=second['gpu_us']/first['gpu_us']);del doubled
            source.mul_(-1).add_(.125)
            if direction=='h2d':
                pinned.copy_(source);device.fill_(float('nan'))
            else:
                device.copy_(source);other.fill_(float('nan'))
            torch.cuda.synchronize();graphs[direction].replay();torch.cuda.synchronize()
            rec['fresh_data']=exact(device if direction=='h2d' else other,source)
            report['cases'].append(rec);save(out,report)
        del graphs,functions,device,pinned,other,source
        torch.cuda.empty_cache()
        # Pageable copies are intentionally measured only as synchronous E2E:
        # this includes any required staging and CPU copy, unlike pinned DMA.
        source=torch.rand(n*n,dtype=torch.float32);dest=torch.empty_like(source);device=source.cuda()
        for direction,fn in [('h2d',lambda:device.copy_(source,non_blocking=True)),
                             ('d2h',lambda:dest.copy_(device,non_blocking=True))]:
            fn();torch.cuda.synchronize();exact(device if direction=='h2d' else dest,source)
            e2e=end_to_end(fn,11)
            report['pageable_cases'].append(dict(n=n,payload_bytes=n*n*4,direction=direction,pinned=False,
                e2e=e2e,e2e_GBps=n*n*4/e2e['us']/1000,bitwise_equal=True))
        del source,dest,device
        torch.cuda.empty_cache();save(out,report)
    report.update(status='complete',finished_at=time.time())
except Exception as exc:
    report.update(status='failed',error=str(exc),traceback=traceback.format_exc());raise
finally:save(out,report)
