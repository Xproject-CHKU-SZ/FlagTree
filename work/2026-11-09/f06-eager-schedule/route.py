# Use the established public benchmark and expose its paired selection medians.
import runpy
from triton.experimental.graph_fusion import _resource_autotune as auto

select = auto.select_measurement

def observed(*args, **kwargs):
    winner, decision = select(*args, **kwargs)
    import json
    print('ACCEPTANCE '+json.dumps(decision.get('e2e_acceptance')),flush=True)
    return winner, decision

auto.select_measurement=observed
runpy.run_path('/repair/v5-qa/public_benchmark.py',run_name='__main__')
