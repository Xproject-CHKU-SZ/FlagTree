"""Paired public diagnostics, using the same module, warmed guards and stream checks."""
import importlib.util
import inspect
import random
import statistics
import sys
import time
import types
from pathlib import Path

def bind(module_name, source):
    p=Path('/tmp')/(module_name+'.py');p.write_text(source)
    spec=importlib.util.spec_from_file_location(module_name,p);mod=importlib.util.module_from_spec(spec)
    sys.modules[module_name]=mod;spec.loader.exec_module(mod)
    return mod

def measure(ctx):
    import torch
    import triton.language as tl
    from triton.tools.tensor_descriptor import TensorDescriptor
    from triton.experimental.graph_fusion import _p800_reduce as red
    pub,model,saved,x,b,snapshot,record,times=(ctx[k] for k in
        ('pub','model','saved','x','b','snapshot','record','times'))
    assert snapshot and x is saved['inputs'][0] and b is saved['inputs'][1]
    state=inspect.getclosurevars(saved['region']).nonlocals['state']
    assert state['row_runner'] is saved['bound']
    old_kernel=state['row_runner']
    original=pub.forward
    ptrs=[TensorDescriptor.from_tensor(t,sh) for t,sh in
          ((x,[16,2048]),(b,[2048]),(torch.empty_like(x),[16,2048]))]
    src=inspect.getsource(red._tle_kernel)
    old='bb = tle.gpu.alloc([YB], dtype=DT, scope=tle.gpu.lmem)'
    assert src.count(old)==1
    mod=bind('cost_public_shared',src.replace(old,old.replace('.lmem','.smem')).replace('_tle_row_softmax','_tle_row_softmax_shared'))
    kernel=mod._tle_kernel()
    cb=kernel[(128,)](*ptrs,2048,XB=16,YB=2048,DT=tl.float32,kl3_softmax_shift=True,kl3_row_softmax=True,num_warps=8,num_stages=1)
    shared=red._bind_row_softmax(cb,kernel,128,*ptrs);assert shared
    manager,replay=snapshot
    graph_name,=[n for n in replay.__code__.co_names if n.startswith('__compiled_fn_')]
    original_graph=replay.__globals__[graph_name]
    exemplar=saved['plan'](*saved['inputs'])
    assert isinstance(exemplar,(tuple,list)) and len(exemplar)==1
    build=type(exemplar)
    def one_stage(a,b):
        runner=state['row_runner']
        result=runner(a,b)
        if result is None:return original_graph(a,b)
        return (result,) if build is tuple else [result]
    bindings=dict(replay.__globals__);bindings[graph_name]=one_stage
    short_replay=types.FunctionType(replay.__code__,bindings,replay.__name__)
    def cell(v):return (lambda:v).__closure__[0]
    cells=tuple(cell((manager,short_replay)) if k=='cached' else c for k,c in
                zip(original.__code__.co_freevars,original.__closure__))
    short=types.FunctionType(original.__code__,original.__globals__,original.__name__,original.__defaults__,cells)
    layouts={'v8':(original,old_kernel),'short':(short,old_kernel),'shared':(original,shared),
             'shared_short':(short,shared)}
    def select(k):
        pub.forward,state['row_runner']=layouts[k]
    try:
        for it in range(6):
            a=torch.randn_like(x)*(30 if it==2 else 1);bias=torch.randn_like(b)
            if it==3:a[0]=float('nan');a[1]=-torch.inf;a[2,1]=torch.inf
            ref=model(a,bias).cpu()
            outs=[]
            stream=torch.cuda.Stream();stream.wait_stream(torch.cuda.current_stream())
            for k in layouts:
                select(k)
                with torch.cuda.stream(stream):z=pub(a,bias)
                stream.synchronize();outs.append(z)
            assert len({z.data_ptr() for z in outs})==len(outs)
            for z in outs:torch.testing.assert_close(z.cpu(),ref,rtol=.0003,atol=1e-8,equal_nan=True)
        assert manager.check({'self':model,'a':x,'b':b})
        assert not manager.check({'self':model,'a':x.T,'b':b})
        record('PUBLIC_CHECK',dict(changed=6,fresh_outputs=True,side_stream=True,same_guard_manager=True))
        keys=list(layouts)+['eager'];rng=random.Random(903)
        if '--blocks' in sys.argv:
            # Keep the selected method bound throughout each block. Match
            # public_benchmark.py's paired, synchronized, ordinary calls.
            costs={k:[] for k in layouts};eager={k:[] for k in layouts}
            for rep in range(23):
                ks=list(layouts);rng.shuffle(ks)
                for k in ks:
                    select(k)
                    for j in range(8):
                        pub(x,b);model(x,b)
                    torch.cuda.synchronize()
                    v=[];e=[]
                    for j in range(38):
                        order=(model,pub) if j%2==0 else (pub,model)
                        for f in order:
                            torch.cuda.synchronize();t=time.perf_counter_ns()
                            result=f(x,b);torch.cuda.synchronize()
                            elapsed=(time.perf_counter_ns()-t)/1000;del result
                            (e if f is model else v).append(elapsed)
                    if rep>=2:
                        costs[k].append(statistics.median(v));eager[k].append(statistics.median(e))
            record('BLOCKS',{k:dict(latency=times(costs[k]),eager=times(eager[k]),
                  over_eager=times([a-b for a,b in zip(costs[k],eager[k])])) for k in layouts})
            record('BLOCK_GAINS',{k:times([(orig-e0)-(new-e1) for orig,e0,new,e1 in
                        zip(costs['v8'],eager['v8'],costs[k],eager[k])]) for k in layouts if k!='v8'})
            return
        timings={k:[] for k in keys}
        for it in range(324):
            rng.shuffle(keys)
            for k in keys:
                if k!='eager':select(k)
                fn=model if k=='eager' else pub
                torch.cuda.synchronize();t=time.perf_counter_ns();y=fn(x,b);u=time.perf_counter_ns()
                torch.cuda.synchronize();v=time.perf_counter_ns();del y
                if it>=24:timings[k].append([(u-t)/1000,(v-t)/1000])
        record('ORDINARY',{k:times([r[1] for r in rows]) for k,rows in timings.items()})
        # Match the shipped public timer: record events around real repeated
        # invocations, with no capture/replay of the private function variants.
        event={k:[] for k in keys}
        for it in range(22):
            rng.shuffle(keys)
            for k in keys:
                if k!='eager':select(k)
                fn=model if k=='eager' else pub
                for attempt in range(5):
                    torch.cuda.synchronize()
                    start,stop=torch.cuda.Event(True),torch.cuda.Event(True);t=time.perf_counter_ns()
                    start.record()
                    for _ in range(40):y=fn(x,b)
                    stop.record();torch.cuda.synchronize()
                    us=start.elapsed_time(stop)*25
                    if 0<us<=(time.perf_counter_ns()-t)/40000*1.1+2:break
                else:raise RuntimeError('invalid event clock')
                if it>=3:event[k].append(us)
        record('PUBLIC_TIMES',{k:dict(device=times(event[k]),submit=times([r[0] for r in ts]),total=times([r[1] for r in ts])) for k,ts in timings.items()})
        pairs=[('v8','short'),('v8','shared'),('v8','shared_short'),('shared','shared_short'),
               ('eager','v8'),('eager','shared_short')]
        record('PUBLIC_GAINS',{a+' -> '+b:dict(total=times([l[1]-r[1] for l,r in zip(timings[a],timings[b])]),
                 device=times([l-r for l,r in zip(event[a],event[b])])) for a,b in pairs})
    finally:
        pub.forward,state['row_runner']=original,old_kernel
