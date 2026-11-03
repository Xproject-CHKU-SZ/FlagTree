"""Minimal real-P800 acceptance: FP32 tile256 and existing compiler/device regressions."""
import hashlib,json,os,subprocess,sys
from pathlib import Path
R=Path('/results');R.mkdir(exist_ok=True)
phase=sys.argv[1] if len(sys.argv)>1 else None
if not phase and (R/'result.json').exists():raise SystemExit('Use a fresh RESULTS_DIR')
os.environ['TRITON_CACHE_DIR']=str(R/('cache-'+(phase or 'main')))
import torch,triton,triton.language as tl
from triton._C import libtriton
assert Path(libtriton.__file__).resolve().is_relative_to('/opt/source-env'),libtriton.__file__
@triton.jit
def cast_kernel(A,B,N:tl.constexpr):
 i=tl.arange(0,N)
 x=tl.load(A+i)
 tl.store(B+i,x.to(tl.bfloat16))
if phase:
 assert phase in ['baseline','fixed','rollback']
 if phase!='fixed':
  from triton._C.libtriton import xpu
  xpu.passes.ttsdnnir.add_preserve_bf16_rounding_pass=lambda *unused:None
 bits=[0x3f808001,0x3f818000,0xbf808001,0xbf818000]*16
 src=torch.tensor([u if u<2**31 else u-2**32 for u in bits],dtype=torch.int32).view(torch.float32).cuda()
 dst=torch.full((64,),42.,dtype=torch.bfloat16,device='cuda');torch.cuda.synchronize()
 kernel=cast_kernel[(1,)](src,dst,64,is_sdnn=True)
 torch.cuda.synchronize()
 actual=[int(u)&0xffff for u in dst.cpu().view(torch.int16).tolist()]
 expected=[((u+0x7fff+((u>>16)&1))>>16)&0xffff for u in bits]
 wrong=sum(a!=b for a,b in zip(actual,expected))
 assert kernel.metadata.is_sdnn and wrong==(0 if phase=='fixed' else 64),(phase,wrong)
 (R/(phase+'.json')).write_text(json.dumps(dict(input_bits=bits,actual=actual,expected=expected,mismatches=wrong)))
 print('BF16_'+phase+' MISMATCHES='+str(wrong),flush=True)
 raise SystemExit(0)
@triton.jit
def mm_kernel(A,B,C,M:tl.constexpr,N:tl.constexpr,K:tl.constexpr,T:tl.constexpr):
 a=tl.make_block_ptr(A,(M,K),(K,1),(0,0),(T,T),(1,0))
 b=tl.make_block_ptr(B,(K,N),(N,1),(0,0),(T,T),(1,0))
 av=tl.load(a,boundary_check=(0,1),padding_option='zero')
 bv=tl.load(b,boundary_check=(0,1),padding_option='zero')
 v=tl.dot(av,bv)
 c=tl.make_block_ptr(C,(M,N),(N,1),(0,0),(T,T),(1,0))
 tl.store(c,v,boundary_check=(0,1))
assert torch.cuda.is_available()
for label in ['baseline','fixed','rollback']:
 subprocess.run([sys.executable,__file__,label],env=dict(os.environ,XMLIR_MATMUL_FAST_MODE='0'),check=True)
records=[]
for seed in [20261028,1234,42]:
 g=torch.Generator().manual_seed(seed)
 ah=torch.randn(64,64,generator=g);bh=torch.randn(64,64,generator=g)
 ref=ah.double()@bh.double();a=ah.cuda();b=bh.cuda();c=torch.empty_like(a);first=None;err=0.
 for i in range(30):
  kernel=mm_kernel[(1,)](a,b,c,64,64,64,256,is_sdnn=True)
  torch.cuda.synchronize();o=c.cpu().clone()
  assert kernel.metadata.is_sdnn and kernel.metadata.xpu_arch==3
  assert bool(torch.isfinite(o).all())
  err=max(err,float((o.double()-ref).abs().max()))
  assert err<=1e-3,(seed,i,err)
  if first is None:first=o
  else:assert torch.equal(first,o),(seed,i,'unstable')
 records.append(dict(seed=seed,calls=30,max_abs_error=err))
# Run unchanged source tests in a fresh process; BF16 conversion requires FAST_MODE=0.
S=Path('/src/FlagTree/third_party/xpu/test')
cmd=[sys.executable,'-m','pytest',str(S/'test_preserve_bf16_rounding.py'),str(S/'test_rank1_wrap_device.py'),str(S/'test_bf16_conversion_device.py'),'-q','-o','cache_dir=/results/pytest-cache']
with (R/'tests.log').open('w') as f: rc=subprocess.run(cmd,env=dict(os.environ,XMLIR_MATMUL_FAST_MODE='0'),stdout=f,stderr=subprocess.STDOUT).returncode
assert rc==0,(R/'tests.log').read_text()[-5000:]
h=hashlib.sha256()
with Path(libtriton.__file__).open('rb') as f:
 for b in iter(lambda:f.read(1048576),b''):h.update(b)
result=dict(status='passed',source_commit=Path('/opt/SOURCE_COMMIT').read_text().strip(),torch=torch.__version__,triton=triton.__version__,libtriton_path=libtriton.__file__,libtriton_sha256=h.hexdigest(),fp32=records,tests_command=cmd,tests_exit=rc)
(R/'result.json').write_text(json.dumps(result,indent=2))
print('SOURCE_ACCEPTANCE_PASSED FP32=90/90 COMPILER_DEVICE_TESTS=35',flush=True)
