"""Lower BF16 LLVM types absent in legacy NVVM IR to exact bit/rounding ops."""
import re

def lower_bfloat(text,kind="bfloat"):
 if kind=="half":text=text.replace("half","bfloat")
 lines=[]
 for number,line in enumerate(text.splitlines()):
  if not re.search(r'\b(fadd|fpext|fptrunc)\b.*\bbfloat\b',line):lines.append(line);continue
  m=re.match(r'  (%\w+) = (fadd|fpext|fptrunc) (.*)',line);assert m,line
  dst,op,rest=m.groups();v=re.search(r'<(\d+) x',rest);n=int(v[1]) if v else 1
  args=re.findall(r'%\w+',rest);assert len(args)==(2 if op=='fadd' else 1),line
  values=[]
  for i in range(n):
   stem=f'%bf{number}_{i}';av=[]
   for j,a in enumerate(args):
    if n>1:
     ity='float' if op=='fptrunc' else 'i16';q=f'{stem}_a{j}'
     lines.append(f'  {q} = extractelement <{n} x {ity}> {a}, i32 {i}');av.append(q)
    else:av.append(a)
   out=dst if n==1 else stem+'_r'
   if op=='fpext':lines.append(f'  {out} = call float @bridge_bfext(i16 {av[0]})')
   elif op=='fptrunc':lines.append(f'  {out} = call i16 @bridge_bftrunc(float {av[0]})')
   else:
    lines.extend([f'  {stem}_x = call float @bridge_bfext(i16 {av[0]})',f'  {stem}_y = call float @bridge_bfext(i16 {av[1]})',f'  {stem}_s = fadd float {stem}_x, {stem}_y',f'  {out} = call i16 @bridge_bftrunc(float {stem}_s)'])
   values.append(out)
  if n>1:
   ty='float' if op=='fpext' else 'i16';base='undef'
   for i,val in enumerate(values):
    out=dst if i==n-1 else f'%bf{number}_v{i}'
    lines.append(f'  {out} = insertelement <{n} x {ty}> {base}, {ty} {val}, i32 {i}');base=out
 text='\n'.join(lines).replace('bfloat','i16')
 text+='''
define internal float @bridge_bfext(i16 %x) alwaysinline {
 %a = zext i16 %x to i32
 %b = shl i32 %a, 16
 %c = bitcast i32 %b to float
 ret float %c
}
define internal i16 @bridge_bftrunc(float %x) alwaysinline {
 %a = call i16 asm "cvt.rn.bf16.f32 $0, $1;", "=h,f"(float %x)
 ret i16 %a
}
'''
 if kind=="half":
  text=text.replace("bridge_bf","bridge_half").replace("cvt.rn.bf16.f32","cvt.rn.f16.f32")
  a=text.index(" %a = zext i16 %x to i32");b=text.index(" ret float %c",a)
  text=text[:a]+' %c = call float asm "cvt.f32.f16 $0, $1;", "=f,h"(i16 %x)\n'+text[b:]
 return text
