"""Use old operator/transfer measurements to order the four split experiments."""
import json,math
from pathlib import Path

def ranked_splits(spec):
    data=json.loads((Path(__file__).parent/'reference/resource-priors.json').read_text())
    # No independent Mul measurement exists. Copy is only a bandwidth hint;
    # materializing a broadcast product can have very different codegen.
    rows=[x for x in data['compute'] if x['op']=='sum' and x['dtype']==spec['dtype']]
    same_dtype=bool(rows)
    if not rows:rows=[x for x in data['compute'] if x['op']=='sum' and x['dtype']=='float32']
    nearest=min(rows,key=lambda x:(abs(math.log2(x['n']/spec['N'])),abs(math.log2(x['m']/spec['M']))))
    copies=[x for x in data['copy'] if x['dtype']==spec['dtype']]
    copy=min(copies,key=lambda x:abs(math.log2(x['n']**2/(spec['M']*spec['N']))))
    consumers=sorted(nearest['gpu_us'],key=nearest['gpu_us'].get)
    producers=sorted(copy['gpu_us'],key=copy['gpu_us'].get)
    routes=[f'{p}_{c}_at_1' for c in consumers for p in producers]
    return routes,dict(sum_prior=nearest,exact_sum_dtype=same_dtype,
        exact_sum_shape=(nearest['m'],nearest['n'])==(spec['M'],spec['N']),
        mul_prior=None,producer_bandwidth_hint=copy,order=routes,
        decision='Prioritization only; unchanged correctness gates and measured complete-plan GPU/E2E times decide selection.',
        sources=data['sources'])
