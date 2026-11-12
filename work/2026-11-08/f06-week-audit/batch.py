import hashlib,json,os,sys,subprocess
from pathlib import Path
from itertools import product
from triton._C import libtriton
from cases import MAT,KINDS
gpu=int(sys.argv[1]); print('ENV',libtriton.__file__,hashlib.md5(Path(libtriton.__file__).read_bytes()).hexdigest(),flush=True)
tasks=list(product(KINDS,('float32','float16'),('64x1024','512x1024','2048x2048')))
for i,(kind,dt,size) in enumerate(tasks):
    if i%4 != gpu: continue
    custom='cluster' if kind not in MAT else 'native_mm'
    if kind=='matmul_bias_gelu_exact': custom='sdnn,native_mm'
    for routes in (custom,'inductor'):
        args=[sys.executable,'/audit/measure.py',kind,dt,size,routes]
        try:
            proc=subprocess.run(['timeout','-k','3','70']+args)
            status=proc.returncode
        except Exception as e: status=str(e)
        print('END '+json.dumps([kind,dt,size,routes,status]),flush=True)
