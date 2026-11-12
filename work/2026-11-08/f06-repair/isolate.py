"""Diagnose a failed calibration by isolating one candidate alongside eager."""
import runpy
import sys
from triton.experimental.graph_fusion import _resource_autotune as auto

candidate = sys.argv.pop(1)
enumerate_all = auto.candidate_plans
def isolate(*args, **kwargs):
    return [p for p in enumerate_all(*args,**kwargs) if p.name in ('eager',candidate)]
auto.candidate_plans = isolate
runpy.run_path('/repair/benchmark.py',run_name='__main__')
