import json,subprocess,sys
from pathlib import Path
for k,d,s,r in json.loads(Path('/audit/retries.json').read_text())[int(sys.argv[1])::3]:
    p=subprocess.run(['timeout','-k','3','80',sys.executable,'-u','/audit/measure.py',k,d,s,r])
    print('END '+json.dumps([k,d,s,r,p.returncode]),flush=True)
