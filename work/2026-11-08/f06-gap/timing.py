import math
import random
import statistics
import time
import json
import torch

def record(label,**values):
    print(label+' '+json.dumps(values,allow_nan=False),flush=True)

def measure(fns, calls=40, rounds=11):
    event={k:[] for k in fns}
    host={k:[] for k in fns}
    for f in fns.values():
        for _ in range(5):out=f()
    for i in range(rounds):
        order=list(fns)
        random.Random(481+i).shuffle(order)
        for k in order:
            for _ in range(5):
                s,e=torch.cuda.Event(True),torch.cuda.Event(True)
                torch.cuda.synchronize()
                wall=time.perf_counter_ns();s.record()
                start=time.perf_counter_ns()
                for j in range(calls):out=fns[k]()
                dispatch=(time.perf_counter_ns()-start)/1000/calls
                e.record();e.synchronize()
                elapsed=(time.perf_counter_ns()-wall)/1000/calls
                val=s.elapsed_time(e)*1000/calls
                if 0<val<=elapsed*1.1+2 and math.isfinite(val):break
            else:raise RuntimeError('invalid timer '+k)
            event[k].append(val);host[k].append(dispatch)
    for label,data in [('EVENT',event),('DISPATCH',host)]:
        record(label,median={k:statistics.median(v) for k,v in data.items()},samples=data)
