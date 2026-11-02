import ctypes as C
import re
import time
from device_link import DeviceLinker,sha

class NVVM:
 def __init__(self):
  self.lib=C.CDLL('/usr/local/cuda/nvvm/lib64/libnvvm.so')
  for n,a in [('nvvmCreateProgram',[C.POINTER(C.c_void_p)]),('nvvmDestroyProgram',[C.POINTER(C.c_void_p)]),('nvvmAddModuleToProgram',[C.c_void_p,C.c_char_p,C.c_size_t,C.c_char_p]),('nvvmCompileProgram',[C.c_void_p,C.c_int,C.POINTER(C.c_char_p)])]:DeviceLinker._bind(self.lib,n,a)
  for k in ('CompiledResult','ProgramLog'):
   DeviceLinker._bind(self.lib,'nvvmGet'+k+'Size',[C.c_void_p,C.POINTER(C.c_size_t)])
   DeviceLinker._bind(self.lib,'nvvmGet'+k,[C.c_void_p,C.c_void_p])
 def compile(self,text,opts):
  start=time.perf_counter_ns();h=C.c_void_p();assert self.lib.nvvmCreateProgram(C.byref(h))==0
  b=text.encode();code=self.lib.nvvmAddModuleToProgram(h,b,len(b),b'body.ll');assert code==0,code
  try:
   a=(C.c_char_p*len(opts))(*(o.encode() for o in opts));code=self.lib.nvvmCompileProgram(h,len(opts),a)
   log=DeviceLinker._blob(self.lib,'nvvm','ProgramLog',h).rstrip(b'\0').decode()
   if code:raise RuntimeError((code,log))
   result=DeviceLinker._blob(self.lib,'nvvm','CompiledResult',h)
  finally:self.lib.nvvmDestroyProgram(C.byref(h))
  return result,dict(total_ms=(time.perf_counter_ns()-start)/1e6,options=opts,log=log,input_sha256=sha(b),output_sha256=sha(result))

def adapt_ir(text):
 from bfloat_bridge import lower_bfloat
 text='\n'.join(l for l in text.splitlines() if not l.startswith('!'))
 text=re.sub(r',? ![\w.]+ !\d+','',text)
 text=re.sub(r'\b(?:captures|memory|range|nofpclass)\([^)]*\)', '',text)
 text=re.sub(r'\b(?:immarg|samesign|disjoint|nneg|noundef|mustprogress|nocallback|nofree|nosync|willreturn|nocreateundeforpoison)\b', '',text)
 text=re.sub(r'(getelementptr inbounds) nuw',r'\1',text)
 text=text.replace('poison','undef')
 text=lower_bfloat(text) if 'bfloat' in text else text
 expanded=[]
 for line in text.splitlines():
  if 'splat (' in line:
   width=int(re.search(r'<(\d+) x',line)[1]);line=re.sub(r'splat \(([^)]+)\)',lambda m:'<'+', '.join([m[1]]*width)+'>',line)
  expanded.append(line)
 text='\n'.join(expanded)
 text=re.sub(r'ptr addrspace\((\d+)\)',r'i8 addrspace(\1)*',text)
 text=re.sub(r'\bptr\b','i8*',text)
 text=text.replace('i8 addrspace(3)* @global_smem','i8 addrspace(3)* bitcast ([0 x i8] addrspace(3)* @global_smem to i8 addrspace(3)*)')
 lines=[];serial=0
 for line in text.splitlines():
  serial+=1
  m=re.match(r'  (%\w+) = getelementptr (?:inbounds )?(\w+), (i8 addrspace\(\d+\)\*) (%\w+), (.*)',line)
  if m and m[2]!='i8':
   dst,ty,pt,src,rest=m.groups();typed=pt.replace('i8',ty)
   lines.extend([f'  %bridge_in{serial} = bitcast {pt} {src} to {typed}',f'  %bridge_gep{serial} = getelementptr {ty}, {typed} %bridge_in{serial}, {rest}',f'  {dst} = bitcast {typed} %bridge_gep{serial} to {pt}']);continue
  m=re.match(r'  (%\w+) = load (.*), (i8 addrspace\(\d+\)\*) (%\w+)(,.*)',line)
  if m:
   dst,ty,pt,src,rest=m.groups();typed=pt.replace('i8',ty)
   lines.extend([f'  %bridge_ptr{serial} = bitcast {pt} {src} to {typed}',f'  {dst} = load {ty}, {typed} %bridge_ptr{serial}{rest}']);continue
  m=re.match(r'  store (.+) (%\w+), (i8 addrspace\(\d+\)\*) (%\w+)(,.*)',line)
  if m:
   ty,val,pt,src,rest=m.groups();typed=pt.replace('i8',ty)
   lines.extend([f'  %bridge_ptr{serial} = bitcast {pt} {src} to {typed}',f'  store {ty} {val}, {typed} %bridge_ptr{serial}{rest}']);continue
  lines.append(line)
 text='\n'.join(lines)
 text=re.sub(r'%(\d+)',r'%v\1',text)
 text=re.sub(r'^(\d+):',r'v\1:',text,flags=re.M)
 text='target triple = \"nvptx64-nvidia-cuda\"\n'+text
 # Legacy NVVM kernel annotations are authoritative for LLVM 7 input.
 sig=re.search(r'define ptx_kernel void @(\w+)\((.*?)\)',text)
 # reqntid is kept in the attribute and also emitted as legacy metadata below.
 paramline=next(l for l in text.splitlines() if l.startswith('define ptx_kernel'))
 types=re.findall(r'i8 addrspace\(\d+\)\*|i32|i64',paramline.split(') local_unnamed')[0])
 threads=re.search(r'"nvvm.reqntid"="(\d+)"',text)
 text+='\n!nvvmir.version = !{!0}\n!0 = !{i32 2, i32 0, i32 3, i32 1}\n'
 if sig:
  ftype='void ('+', '.join(types)+')* @'+sig[1]
  text+='!nvvm.annotations = !{!1, !2}\n!1 = !{'+ftype+', !"kernel", i32 1}\n!2 = !{'+ftype+', !"reqntidx", i32 '+(threads[1] if threads else '128')+'}\n'
 return text

if __name__=='__main__':
 from pathlib import Path
 import sys
 p=Path(sys.argv[1]);s=adapt_ir(p.read_text());Path('/tmp/body-adapt.ll').write_text(s)
 result,rec=NVVM().compile(s,['-arch=compute_89','-gen-lto','-fma=0']);Path('/tmp/body.ltoir').write_bytes(result);print(rec)
