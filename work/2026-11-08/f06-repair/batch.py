import itertools,json,subprocess,sys
from pathlib import Path
from cases import KINDS
shapes=('64x1024','512x1024','2048x2048')
tasks=list(itertools.product(KINDS,('float32','float16'),shapes))
if len(sys.argv)>2:
    tasks=json.loads(Path(sys.argv[2]).read_text())
for kind,dtype,shape in tasks[int(sys.argv[1])::4]:
    # Each cold calibration has its own process so an SDK hang cannot consume other cases.
    p=subprocess.run(['timeout','-k','3','155',sys.executable,'-u','/repair/benchmark.py',kind,dtype,shape])
    print('END '+json.dumps([kind,dtype,shape,p.returncode]),flush=True)
