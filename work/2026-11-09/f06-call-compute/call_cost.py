"""Compare real layers of the same warm B2 call; keep profiling hooks disabled."""
import hashlib
import inspect
import json
import random
import statistics
import sys
import time
import types
from pathlib import Path

import torch
from triton._C import libtriton
from triton.experimental import graph_fusion
from triton.experimental.graph_fusion import _p800_reduce as red, _resource_autotune as auto
from triton.runtime import driver
sys.path.insert(0, '/repair')
from cases import Bin

def record(label, value):
    print(label, json.dumps(value), flush=True)

def times(values):
    ordered = sorted(values)
    return [statistics.median(ordered), ordered[len(ordered)//4], ordered[len(ordered)*3//4]]

torch.manual_seed(917);torch.set_grad_enabled(False)
x=torch.randn(2048,2048,device='cuda');b=torch.randn(2048,device='cuda')
model=Bin('add_softmax',2048).cuda().eval()
ref=model(x,b).cpu()
saved={}
old_cal,old_red,old_bind=auto.calibrate_resources,red.compile,red._bind_row_softmax
def capture_cal(gm, inputs, **kwargs):
    fn,decision=old_cal(gm,inputs,**kwargs)
    saved.update(plan=fn,inputs=inputs,decision=decision)
    return fn,decision
def capture_red(*args,**kwargs):
    fn,proof=old_red(*args,**kwargs)
    saved['region']=fn
    return fn,proof
def capture_bind(binary,kernel,grid,ad,bd,od):
    bound=old_bind(binary,kernel,grid,ad,bd,od)
    saved.update(bound=bound,binary=binary,grid=grid,layout=tuple(ad.shape)+tuple(ad.strides),
                 blayout=tuple(bd.shape)+tuple(bd.strides))
    return bound
auto.calibrate_resources,red.compile,red._bind_row_softmax=capture_cal,capture_red,capture_bind
audit=[]
try:
    backend=graph_fusion.autotune_resource_backend(tolerance=dict(rtol=.0003,atol=.0003),
             environment_key='P800-cost-'+hashlib.md5(Path(libtriton.__file__).read_bytes()).hexdigest(),audit=audit)
    pub=torch.compile(model,backend=backend,fullgraph=True,dynamic=False)
    for i in range(4): y=pub(x,b)
finally:
    auto.calibrate_resources,red.compile,red._bind_row_softmax=old_cal,old_red,old_bind
guarded=getattr(pub.forward,'_flagtree_hot_entry',None) is backend
snapshot=inspect.getclosurevars(pub.forward).nonlocals.get('cached') if guarded else None
record('STATE',dict(selected=saved['decision']['selected'],guarded=guarded,warm=bool(snapshot),
                    bound=callable(saved.get('bound')),binary=hashlib.sha256(saved['binary'].asm['xpubin']).hexdigest(),
                    input_order=['matrix' if t is x else 'bias' if t is b else str(list(t.shape)) for t in saved['inputs']]))
if saved['decision']['selected']!='cluster':raise RuntimeError('public route did not select the fused kernel')
binary=saved['binary'];layout=saved['layout'];blayout=saved['blayout'];g=saved['grid']
entry=binary.run.launch;handle=binary.function;meta=binary.packed_metadata;active=driver.active
pre=torch.empty_like(x)
def launch_result(o):
    entry(g,1,1,active.get_current_stream(x.device.index),handle,meta,None,None,None,
          x,*layout,b,*blayout,o,*layout,2048)
    return o
def raw_fresh():
    return launch_result(torch.empty_like(x))
saved_stream=active.get_current_stream(x.device.index)
def raw_pre():
    entry(g,1,1,saved_stream,handle,meta,None,None,None,x,*layout,b,*blayout,pre,*layout,2048)
    return pre

fns={'eager':lambda:model(x,b),'eager_forward':lambda:model.forward(x,b),'public':lambda:pub(x,b),
     'public_forward':lambda:pub.forward(x,b),'plan':lambda:saved['plan'](*saved['inputs']),
     'region':lambda:saved['region']([x,b]),'bound':lambda:saved['bound'](x,b),'fresh':raw_fresh,
     'pre_current':lambda:launch_result(pre),'pre':raw_pre}
if snapshot:
    manager,replay=snapshot
    fns['replay']=lambda:replay(model,x,b)
for fn in fns.values():
    val=fn()
    if isinstance(val,(list,tuple)):val=val[0]
    torch.testing.assert_close(val.cpu(),ref,rtol=.0003,atol=1e-8)
torch.cuda.synchronize()
if '--public-control' in sys.argv:
    from public_control import measure
    measure(globals())
    sys.exit(0)
if '--timeline' in sys.argv:
    import ctypes
    class Span(ctypes.Structure):
        _fields_=[('start',ctypes.c_uint64),('end',ctypes.c_uint64),('name',ctypes.c_char_p)]
    lib=ctypes.CDLL('/tmp/b2-launch-clock.so');lib.b2_clock_start.restype=None
    lib.b2_clock_stop.argtypes=[ctypes.POINTER(Span)];lib.b2_clock_stop.restype=ctypes.c_uint
    buf=(Span*16)()
    tracekeys=['public','eager','plan','bound','pre']
    trace={k:[] for k in tracekeys};syms={};rng=random.Random(651)
    for i in range(278):
        rng.shuffle(tracekeys)
        for k in tracekeys:
            torch.cuda.synchronize();lib.b2_clock_start();start=time.monotonic_ns()
            v=fns[k]();submitted=time.monotonic_ns()
            torch.cuda.synchronize();done=time.monotonic_ns();n=lib.b2_clock_stop(buf)
            del v
            assert n==(2 if k=='eager' else 1),(k,n)
            symbols=[buf[j].name.decode() for j in range(n)]
            if k in syms:assert syms[k]==symbols
            syms[k]=symbols
            if i>=22:
                trace[k].append([(buf[0].start-start)/1000,(buf[0].end-start)/1000,
                    (buf[n-1].start-start)/1000,(buf[n-1].end-start)/1000,
                    (submitted-start)/1000,(done-start)/1000])
    record('SYMBOLS',syms)
    stages=['first_xre_enter','first_xre_return','last_xre_enter','last_xre_return','python_return','synchronized']
    record('TIMELINE',{k:{h:times([row[j] for row in rows]) for j,h in enumerate(stages)} for k,rows in trace.items()})
    if snapshot:
        # The clone still evaluates every real condition, full guard manager,
        # and the original replay. Only record timestamps at their boundaries.
        manager,replay=snapshot
        stamps=[0]*6
        class Stamped:
            @property
            def cache_entry(self):
                stamps[0]=time.monotonic_ns()
                res=manager.cache_entry
                stamps[1]=time.monotonic_ns()
                return res
            def check(self,frame):
                stamps[2]=time.monotonic_ns()
                res=manager.check(frame)
                stamps[3]=time.monotonic_ns()
                return res
        def timed_replay(*args):
            stamps[4]=time.monotonic_ns()
            r=replay(*args)
            stamps[5]=time.monotonic_ns()
            return r
        def cell(obj):return (lambda:obj).__closure__[0]
        original=pub.forward
        cells=tuple(cell((Stamped(),timed_replay)) if k=='cached' else c for k,c in
                    zip(original.__code__.co_freevars,original.__closure__))
        observed=types.FunctionType(original.__code__,original.__globals__,original.__name__,original.__defaults__,cells)
        rows=[]
        for i in range(290):
            torch.cuda.synchronize()
            stamps[:]=[0]*6;t=time.monotonic_ns();r=observed(x,b);end=time.monotonic_ns()
            torch.cuda.synchronize();del r
            ts=[t,*stamps,end];assert ts==sorted(ts)
            if i>=34:rows.append([(q-p)/1000 for p,q in zip(ts,ts[1:])])
        stages=['state_checks','cache_entry','frame_locals','manager_check','handoff','replay','return']
        record('GUARD_LIVE',{k:times([r[i] for r in rows]) for i,k in enumerate(stages)})
        # Observe the same guards inside OptimizedModule.__call__, along with
        # the true XRE entry. The timestamp spans a sequence of consecutive
        # boundaries in ONE call; sampling independent layer medians need not add.
        old_bound=saved['bound']
        state=inspect.getclosurevars(saved['region']).nonlocals['state']
        assert state['row_runner'] is old_bound
        extra=[0,0]
        def mark_bound(a,b):
            extra[1]=time.monotonic_ns()
            return old_bound(a,b)
        def mark_forward(*args):
            extra[0]=time.monotonic_ns()
            return observed(*args)
        try:
            pub.forward=mark_forward;state['row_runner']=mark_bound
            rows=[]
            for i in range(272):
                torch.cuda.synchronize();lib.b2_clock_start();t=time.monotonic_ns();y=pub(x,b)
                submitted=time.monotonic_ns();torch.cuda.synchronize();done=time.monotonic_ns()
                n=lib.b2_clock_stop(buf);assert n==1
                seq=[t,extra[0],*stamps[:5],extra[1],buf[0].start,buf[0].end,submitted,done]
                assert seq==sorted(seq);del y
                if i>=16:rows.append([(b-a)/1000 for a,b in zip(seq,seq[1:])])
                torch.cuda.synchronize();z=model(x,b);torch.cuda.synchronize();del z
            stages=['module_to_forward','flags','cache_entry','locals','full_manager','handoff',
                    'replay_to_bound','bound_to_xre','xre','unwind','wait']
            record('PUBLIC_SPANS',{k:times([r[j] for r in rows]) for j,k in enumerate(stages)})
        finally:
            pub.forward=original;state['row_runner']=old_bound
    sys.exit(0)
names=list(fns);rng=random.Random(901);samples={k:[] for k in names}
for i in range(276):
    rng.shuffle(names)
    for k in names:
        torch.cuda.synchronize();t=time.perf_counter_ns();v=fns[k]();u=time.perf_counter_ns()
        torch.cuda.synchronize();end=time.perf_counter_ns();del v
        if i>=20:samples[k].append([(u-t)/1000,(end-u)/1000,(end-t)/1000])
record('LAYERS',{k:{h:times([r[j] for r in v]) for j,h in enumerate(['submit','wait','total'])} for k,v in samples.items()})
edges=[('public','eager'),('public','public_forward'),('plan','region'),('region','bound'),('bound','fresh'),
       ('fresh','pre_current'),('pre_current','pre'),('eager','eager_forward'),('plan','eager'),('bound','eager')]
if snapshot:edges += [('public_forward','replay'),('replay','plan')]
else:edges += [('public_forward','plan')]
record('PAIRED',{a+' - '+b:{h:times([l[j]-r[j] for l,r in zip(samples[a],samples[b])])
              for j,h in enumerate(['submit','wait','total'])} for a,b in edges})
if snapshot:
    # Clone the installed entry for CPU-only measurements. Both clones return a
    # sentinel in place of the graph and never dispatch an unguarded kernel.
    sentinel=object()
    def stop(*args):return sentinel
    def new_cell(obj):
        return (lambda:obj).__closure__[0]
    def clone_with(manager):
        fn=pub.forward
        cells=tuple(new_cell((manager,stop)) if k=='cached' else c
                    for k,c in zip(fn.__code__.co_freevars,fn.__closure__))
        return types.FunctionType(fn.__code__,fn.__globals__,fn.__name__,fn.__defaults__,cells)
    class Accepted:
        cache_entry=True
        @staticmethod
        def check(locals_):return True
    real_guard=clone_with(manager);no_guard=clone_with(Accepted())
    assert real_guard(x,b) is no_guard(x,b) is sentinel
    locals_={'self':model,'a':x,'b':b};assert manager.check(locals_)
    checks={'empty':lambda:stop(model,x,b),'flags_and_manager':lambda:real_guard(x,b),
            'flags_only_and_dict':lambda:no_guard(x,b),'manager_only':lambda:manager.check(locals_)}
    cs={k:[] for k in checks}
    for i in range(43):
        ks=list(checks);rng.shuffle(ks)
        for k in ks:
            f=checks[k];t=time.perf_counter_ns()
            for _ in range(400):f()
            if i>=3:cs[k].append((time.perf_counter_ns()-t)/400000)
    record('GUARDS',{k:times(v) for k,v in cs.items()})
record('DONE',True)
