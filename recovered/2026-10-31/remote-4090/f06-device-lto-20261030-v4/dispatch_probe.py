"""Count the native C launcher outside timing, preserving its binding exactly."""
import inspect,types,hashlib
from pathlib import Path

def probe(fn, inputs, label):
 import torch
 from torch._inductor.runtime.triton_heuristics import CachingAutotuner
 from triton.experimental.graph_fusion._inference import _single_inductor_kernel
 compiled=fn._compiled_graph
 if isinstance(compiled,types.FunctionType):
  compiled=inspect.getclosurevars(compiled).nonlocals['compiled']
 wrapped=compiled.current_callable
 if isinstance(wrapped,types.FunctionType):
  wrapped=inspect.getclosurevars(wrapped).nonlocals['model']
 assert isinstance(wrapped,types.MethodType),type(wrapped)
 name=_single_inductor_kernel(fn.generated_sources);assert name
 tuner=wrapped.__func__.__globals__[name]
 assert type(tuner) is CachingAutotuner and len(tuner.launchers)==1
 launcher=tuner.launchers[0];scope=launcher.__globals__;original=scope['runner']
 from torch._inductor.runtime.triton_heuristics import triton_hash_to_path_key
 matches=[c.kernel for c in tuner.compile_results if triton_hash_to_path_key(c.kernel.hash)==launcher.cache_hash]
 assert len(matches)==1
 binary=matches[0]
 assert original==binary.run, 'runner must bind the selected binary'
 count=0
 def counted(*a,**kw):
  nonlocal count
  count+=1
  return original(*a,**kw)
 torch.cuda.synchronize();scope['runner']=counted
 try:fn(*inputs);torch.cuda.synchronize()
 finally:scope['runner']=original
 assert count==1,count
 assert fn.fallback_calls==0
 assert tuner.launchers==[launcher]
 if hasattr(binary,'asm'):
  asm=binary.asm['cubin']
 else:
  from torch._inductor.runtime.triton_heuristics import triton_cache_dir
  cubin=Path(triton_cache_dir(tuner.triton_meta.get('device',0)))/triton_hash_to_path_key(binary.hash)/(binary.name+'.cubin')
  asm=cubin.read_bytes()
 assert isinstance(asm,bytes)
 return dict(label=label,dispatches=count,kernel=name,binary_hash=binary.hash,cubin_sha256=hashlib.sha256(asm).hexdigest(),instrumentation_in_timing=False)
