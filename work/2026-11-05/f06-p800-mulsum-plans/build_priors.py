"""Freeze existing observations as candidate-order hints, never acceptance evidence."""
from pathlib import Path
import json,hashlib
root=Path(__file__).resolve().parent;repo=root.parents[2]
paths={'compute':repo/'work/2026-11-02/p800-capability/measurements.json','transfer':repo/'work/2026-11-02/p800-transfer/measurements.json'}
compute=json.loads(paths['compute'].read_text());transfer=json.loads(paths['transfer'].read_text())
obj={'sources':{k:{'path':str(p.relative_to(repo)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for k,p in paths.items()},
     'speedup_definition':'cluster GPU us / SDNN GPU us; > 1 favors SDNN',
     'scope':'Prior standalone kernels; different GPU/config/layout from current Inductor regions. Ordering only. FP16/BF16 sum and standalone Mul were not measured.',
     'compute':[], 'copy':[], 'relay':[]}
for x in compute:
 obj['compute'].append({k:x[k] for k in ('op','m','n','dtype','gpu')}|{'gpu_us':{r:v['gpu_us'] for r,v in x['resources'].items()},'sdnn_speedup':1/x['sdnn_over_cluster']})
for kind in ('copy','relay'):
 for x in transfer[kind]:
  obj[kind].append({k:x[k] for k in ('n','dtype','gpu')}|{'gpu_us':{r:v['gpu_us'] for r,v in x['resources'].items()}})
(root/'bench/reference/resource-priors.json').write_text(json.dumps(obj,indent=2))
