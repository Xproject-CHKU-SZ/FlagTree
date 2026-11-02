import copy,json,re,subprocess,time
from device_link import sha
from nvvm_bridge import NVVM,adapt_ir

class LTOPrototype:
 def __init__(self,base,linker):
  self.base,self.linker=base,linker;self.cache={};self.events=[]
  start=time.perf_counter_ns();ir=adapt_ir(base.body.asm['llir']);adapt_ms=(time.perf_counter_ns()-start)/1e6
  self.body,record=NVVM().compile(ir,['-arch=compute_89','-gen-lto',f'-fma={int(base.body.metadata.enable_fp_fusion)}'])
  self.record=dict(adapt_ms=adapt_ms,body_compile=record,body_ltoir_sha256=sha(self.body),events=self.events)
  (base.directory/(base.prefix+'-nvvm.ll')).write_text(ir)
  (base.directory/(base.prefix+'-body.ltoir')).write_bytes(self.body)
 def get(self,mode,inline=True):
  key=(mode,inline)
  if key in self.cache:return self.cache[key],dict(cache_hit=True,mode=mode)
  f,compile_rec=self.linker.compile_lto_function(mode,self.base.full_asm,inline)
  image,link_rec=self.linker.link_lto(self.body,f['object'],self.base.body.metadata.enable_fp_fusion)
  binary=copy.copy(self.base.body);binary.kernel=image;binary.asm=dict(binary.asm,cubin=image);binary.hash=sha(image)
  binary.metadata=binary.metadata._replace(hash=binary.hash)
  from triton.compiler.compiler import make_backend
  binary.packed_metadata=make_backend(binary.metadata.target).pack_metadata(binary.metadata)
  binary.module,binary.function,binary._run=None,None,None
  start=time.perf_counter_ns();binary._init_handles();load_ms=(time.perf_counter_ns()-start)/1e6
  route='lto' if inline else 'lto_call';stem=self.base.prefix+'-'+route+'-'+mode
  path=self.base.directory/(stem+'.cubin');path.write_bytes(image)
  (self.base.directory/(route+'-function-'+mode+'.cu')).write_text(f['source'])
  (self.base.directory/(route+'-function-'+mode+'.ltoir')).write_bytes(f['object'])
  sass=subprocess.check_output(['/usr/local/cuda/bin/cuobjdump','--dump-resource-usage','--dump-sass',str(path)],text=True)
  (self.base.directory/(stem+'.sass')).write_text(sass)
  main=next(s for s in sass.split('Function : ') if s.startswith('f06_gelu_body\n'))
  calls=main.count('CALL.')
  if inline:assert calls==0,('LTO did not inline all calls',stem,calls)
  else:assert calls>0,('noinline control lost its call',stem)
  rec=dict(mode=mode,route=route,compile=compile_rec,link=link_rec,load_and_launcher_ms=load_ms,main_static_calls=calls,n_regs=binary.n_regs,n_spills=binary.n_spills,cache_hit=False)
  self.events.append(rec)
  def invoke(*inputs):
   import torch
   b=self.base;s=b.spec;out=torch.empty((s['M'],s['N']),device=inputs[0].device,dtype=inputs[0].dtype)
   binary[b.grid](*b.arguments(inputs,out));return out
  invoke.binary=binary;self.cache[key]=invoke;return invoke,rec
 def __call__(self,*inputs):
  mode,_=self.base.screen(inputs);fn,_=self.get(mode);return fn(*inputs)
 def screen(self,inputs):return self.base.screen(inputs)
 def get_linked(self,mode):return self.get(mode)
 @property
 def spec(self):return self.base.spec
