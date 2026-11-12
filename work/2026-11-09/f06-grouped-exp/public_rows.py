import json,os,sys,subprocess
for dtype in ('float32','float16'):
    for shape in ('64x1024','512x1024','2048x2048'):
        job=subprocess.run(['timeout','-k','3','140',sys.executable,'-u','/repair/v5-qa/public_benchmark.py',
                            'add_softmax',dtype,shape])
        print('END '+json.dumps([dtype,shape,job.returncode]),flush=True)
