"""Replay one isolated calibration per missing case with diagnostic stack dumps."""
import json
import subprocess
import sys
from pathlib import Path

manifest, slot, slots, timeout = sys.argv[1:5]
cases = json.loads(Path(manifest).read_text())
for kind, dtype, shape in cases[int(slot)::int(slots)]:
    record = ("import faulthandler,runpy,sys; sys.path.insert(0,'/repair'); "
              "faulthandler.dump_traceback_later(95,repeat=True); "
              "runpy.run_path('/repair/benchmark.py',run_name='__main__')")
    child = subprocess.run(['timeout','-k','3',timeout,sys.executable,'-u','-c',record,kind,dtype,shape])
    print('END '+json.dumps([kind,dtype,shape,child.returncode]),flush=True)
