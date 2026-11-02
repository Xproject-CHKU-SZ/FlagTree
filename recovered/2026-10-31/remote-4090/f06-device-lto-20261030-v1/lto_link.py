"""Real NVIDIA device LTO: NVVM/NVRTC LTO-IR inputs, nvJitLink -lto."""
import ctypes as C
import time
from device_link import DeviceLinker,function_source,sha,elf_type

class LTOLinker(DeviceLinker):
 def __init__(self):
  super().__init__(nvrtc_options=('--no-cache',))
  for kind in ('LTOIR',):
   self._bind(self.nvrtc,'nvrtcGet'+kind+'Size',[C.c_void_p,C.POINTER(C.c_size_t)])
   self._bind(self.nvrtc,'nvrtcGet'+kind,[C.c_void_p,C.c_void_p])
 def compile_lto_function(self,mode,asm,inline=True):
  key=(mode,inline)
  if key in self.function_cache:return self.function_cache[key],dict(cache_hit=True,mode=mode,total_ms=0)
  source=function_source(mode,asm)
  if inline:source=source.replace('__noinline__','')
  options=['--gpu-architecture=compute_89','-dlto','--std=c++17','--fmad=false','--no-cache']
  start=time.perf_counter_ns();h=C.c_void_p();assert self.nvrtc.nvrtcCreateProgram(C.byref(h),source.encode(),b'tanh.cu',0,None,None)==0
  try:
   a=(C.c_char_p*len(options))(*(x.encode() for x in options));t=time.perf_counter_ns();code=self.nvrtc.nvrtcCompileProgram(h,len(options),a);api=(time.perf_counter_ns()-t)/1e6
   log=self._blob(self.nvrtc,'nvrtc','ProgramLog',h).rstrip(b'\0').decode()
   if code:raise RuntimeError((code,log))
   ir=self._blob(self.nvrtc,'nvrtc','LTOIR',h)
  finally:self.nvrtc.nvrtcDestroyProgram(C.byref(h))
  rec=dict(mode=mode,inline=inline,total_ms=(time.perf_counter_ns()-start)/1e6,compile_api_ms=api,options=options,source_sha256=sha(source.encode()),object_sha256=sha(ir),log=log,cache_hit=False)
  value=dict(object=ir,source=source,record=rec);self.function_cache[key]=value;self.compile_events.append(rec);return value,rec
 def link_lto(self,body,func,fma=False):
  start=time.perf_counter_ns();h=C.c_void_p()
  options=['-arch=sm_89','-lto','-no-cache',f'-fma={int(fma)}','-ftz=0','-verbose','-time']
  a=(C.c_char_p*len(options))(*(x.encode() for x in options));assert self.linker.nvJitLinkCreate(C.byref(h),len(options),a)==0
  buffers=[]
  try:
   for name,data in [('body.ltoir',body),('tanh.ltoir',func)]:
    b=C.create_string_buffer(data);buffers.append(b);assert self.linker.nvJitLinkAddData(h,3,b,len(data),name.encode())==0
   t=time.perf_counter_ns();code=self.linker.nvJitLinkComplete(h);complete=(time.perf_counter_ns()-t)/1e6
   log=self._blob(self.linker,'nvJitLink','ErrorLog',h).rstrip(b'\0').decode()
   if code:raise RuntimeError((code,log))
   image=self._blob(self.linker,'nvJitLink','LinkedCubin',h);info=self._blob(self.linker,'nvJitLink','InfoLog',h).rstrip(b'\0').decode()
  finally:self.linker.nvJitLinkDestroy(C.byref(h))
  assert elf_type(image)==2
  rec=dict(total_ms=(time.perf_counter_ns()-start)/1e6,link_complete_ms=complete,options=options,lto=True,body_sha256=sha(body),function_sha256=sha(func),cubin_sha256=sha(image),info_log=info,error_log=log)
  self.link_events.append(rec);return image,rec
