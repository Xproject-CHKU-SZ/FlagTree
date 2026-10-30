"""Fresh-workspace baseline/fix/rollback proof, with numerical verdict exits."""
import argparse,hashlib,json,os,shutil,subprocess,sys
from pathlib import Path
ap=argparse.ArgumentParser();ap.add_argument('--repeat',type=int,default=30);ap.add_argument('--full',action='store_true');ap.add_argument('--work',type=Path,default=Path('/research'));args=ap.parse_args()
R=args.work;L=Path('/release');P=Path('/opt/xpu-fix')
if not (P/'runtime/triton/_C/libtriton.so').is_file():raise SystemExit('run install.sh first')
if (R/'results').exists():raise SystemExit('use a NEW replay workspace; existing evidence is preserved')
R.mkdir(exist_ok=True)
for name in ['scripts','kernels','legacy-compat']:
 shutil.copytree(L/'payload'/name,R/name,dirs_exist_ok=False)
(R/'results').mkdir();(R/'logs').mkdir()
BASE='/root/miniconda/envs/python310_torch29_cuda/bin/python'
FIX=str(P/'venv/bin/python')
common=dict(os.environ,CUDA_VISIBLE_DEVICES='0',FLAGTREE_BACKEND='xpu',KLX_USE_AUTOTUNE='0',XMLIR_MATMUL_FAST_MODE='1',OPENBLAS_NUM_THREADS='4',OMP_NUM_THREADS='4')
fixed_path=f'{P}/runtime:{P}/flaggems/src:{P}/flaggems'
records=[]
def run(label,cmd,env,expected=0,timeout=300):
 with (R/'logs'/(label+'.log')).open('w') as f:
  try: rc=subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,timeout=timeout).returncode
  except subprocess.TimeoutExpired:rc=124
 rec=dict(label=label,command=cmd,expected_exit=expected,exit=rc,accepted=rc==expected)
 records.append(rec);(R/'results/replay.json').write_text(json.dumps(records,indent=2))
 print(label,'exit='+str(rc),'expected='+str(expected),flush=True)
 if not rec['accepted']:raise SystemExit(1)
for phase in ['baseline','fixed','rollback']:
 env=dict(common,PYTHONPATH=(fixed_path if phase=='fixed' else '/root/miniconda/envs/python310_torch29_cuda/lib/python3.10/site-packages'))
 py=FIX if phase=='fixed' else BASE
 out=R/'results'/('fp32-'+phase)
 script='numerics_probe.py' if phase=='fixed' else 'legacy_fp32_control.py'
 run('fp32-'+phase,[py,'-B','-u',str(R/'scripts'/script),'--out',str(out),'--seeds','20261028,1234,42','--dtypes','float32','--repeat',str(args.repeat)],env)
 d=json.loads((out/'result.json').read_text());bad=any(not r['finite'] or r['repeat_max_abs']!=0 or max(r['max_abs_per_run'])>1e-3 for r in d['records'])
 assert bad==(phase!='fixed'),(phase,bad)
 verdict=dict(passed=not bad,numeric_exit=int(bad),collector_exit=0)
 (out/'verdict.json').write_text(json.dumps(verdict,indent=2))
 print('FP32',phase,'numeric_exit='+str(int(bad)),flush=True)
 # No software-round prototype: the same kernel must be fixed by compiler/runtime.
 cast_script='cast_probe.py' if phase=='fixed' else 'legacy_cast_control.py'
 run('bf16-'+phase,[py,'-B','-u',str(R/'scripts'/cast_script),'--out',str(R/'results'/('bf16-'+phase)),'--sdnn','1'],dict(env,XMLIR_MATMUL_FAST_MODE='0'),expected=0 if phase=='fixed' else 1)
 cast=json.loads((R/'results'/('bf16-'+phase)/'result.json').read_text())
 assert cast['metadata']['is_sdnn'] and not cast.get('software_round_prototype',cast.get('software_round',False))
 assert bool(cast['mismatches'])==(phase!='fixed'),(phase,cast)
fixed_env=dict(common,PYTHONPATH=fixed_path,TRITON_CACHE_DIR=str(R/'cache/tests'),GEMS_SOURCE_ROOT=str(P/'flaggems'))
tests=L/'payload/tests'
run('compiler-device-tests',[FIX,'-m','pytest',str(tests/'test_preserve_bf16_rounding.py'),str(tests/'test_rank1_wrap_device.py'),str(tests/'test_bf16_conversion_device.py'),'-q','-o','cache_dir=/research/pytest-cache'],dict(fixed_env,XMLIR_MATMUL_FAST_MODE='0'),timeout=600)
shapes=['64,64,64'] if not args.full else ['64,64,64','1,1,32','15,160,1024','495,5333,71']
for shape in shapes:
 run('blas-'+shape,[FIX,'-B',str(R/'scripts/blas_regression.py'),'--shape',shape,'--out',str(R/'results'/('blas-'+shape))],fixed_env,timeout=900)
if args.full:
 for a,b,label in [(1,0,'a'),(0,1,'b'),(1,1,'ab')]:
  cmd=[FIX,'-B',str(R/'scripts/blas_regression.py'),'--shape','64,64,64','--out',str(R/'results'/('transpose-'+label))]
  if a:cmd+=['--transpose-a']
  if b:cmd+=['--transpose']
  run('transpose-'+label,cmd,fixed_env,timeout=600)
 print('For the archived 1800-call stress matrix and 174-case pytest, see evidence index and historical scripts.',flush=True)
print('REPLAY_CLOSED',flush=True)
