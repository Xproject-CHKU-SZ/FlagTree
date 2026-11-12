import json,subprocess,sys,os
from itertools import product
from cases import KINDS
tasks=list(product(KINDS,('float32','float16')))
for k,dt in tasks[int(sys.argv[1])::4]:
    print('ENTRY '+json.dumps([k,dt]),flush=True)
    env=dict(os.environ,XMLIR_ENABLE_MOCK_TORCH_COMPILE='false')
    p=subprocess.run(['timeout','-k','3','75',sys.executable,'-u','/audit/delivery.py','backend',k,dt],env=env)
    print('ENTRY_END '+json.dumps([k,dt,p.returncode]),flush=True)
