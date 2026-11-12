"""Sample the benchmark card while either pass is running. No device context is created."""
import json
import re
import subprocess
import sys
import time
from pathlib import Path

base = Path(sys.argv[1])
card = int(sys.argv[2])
passes = [base / s for s in sys.argv[3:]]
ours = set()
while True:
    stages = []
    for folder in passes:
        rc_file = folder / 'exit'
        rc = int(rc_file.read_text()) if rc_file.exists() and rc_file.stat().st_size else None
        accepted = sum(1 for _ in folder.glob('*/accepted'))
        stages.append({'pass':folder.name,'accepted_groups':accepted,'exit':rc})
    result = subprocess.run(['xpu_smi','-i',str(card)], capture_output=True, text=True, timeout=15)
    sample = {'time':time.strftime('%Y-%m-%dT%H:%M:%S%z'), 'card':card,'stages':stages}
    if result.returncode == 0:
        text=result.stdout
        match=re.search(r'^\|\s+'+str(card)+r'\s+P800[^\n]*\n[^\n]*?\|\s*(\d+)MiB /\s*\d+MiB\s*\|\s*(\d+)%',text,re.M)
        if match:sample.update(memory_mib=int(match[1]),util_pct=int(match[2]))
        pids=[int(x) for x in re.findall(r'^\|\s+'+str(card)+r'\s+(?:N/A|\d+)\s+(?:N/A|\d+)\s+(\d+)\s+',text,re.M)]
        groups={}
        command_match=set()
        for pid in pids:
            try:
                groups[pid]=Path(f'/proc/{pid}/cgroup').read_text().strip()
                argv=Path(f'/proc/{pid}/cmdline').read_bytes().split(b'\0')
                if b'/repair/opt47/formal-v2/bench.py' in argv:
                    command_match.add(pid)
                    if 'docker' in groups[pid]:ours.add(groups[pid])
            except (FileNotFoundError, PermissionError, ProcessLookupError):
                pass
        sample['compute_pids']={pid:('benchmark' if pid in command_match or groups.get(pid) in ours
                                      else 'other' if groups.get(pid) and 'docker' in groups[pid] and ours
                                      else 'unclassified') for pid in pids}
    print(json.dumps(sample), flush=True)
    if stages[-1]['exit'] is not None or any(s['exit'] not in (None,0) for s in stages):break
    time.sleep(20)
