import hashlib
import json
import os
from pathlib import Path
import sys
import unittest

ROOT=Path(__file__).resolve().parent
for name,digest in json.loads((ROOT/'source_manifest.json').read_text())['files'].items():
    assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==digest,name
import triton.experimental
triton.experimental.__path__.insert(0,str(ROOT/'source/python/triton/experimental'))
sys.path.insert(0,str(ROOT/'source/python/test/unit/runtime'))
gpu='--gpu' in sys.argv
if gpu:
    os.environ['F06_RUN_CUDA_TESTS']='1'
    names=['test_graph_fusion_small_matmul_cuda.SmallMatmulCUDA.'+name for name in (
        'test_native_tanh_for_matrix_and_pointwise_gelu',
        'test_report_shapes_all_epilogues_one_launch_and_fresh_outputs',
        'test_special_values_and_materialized_low_precision_boundaries')]
else:
    assert os.environ['CUDA_VISIBLE_DEVICES']=='-1'
    names=['test_graph_fusion_static','test_graph_fusion_static_acceptance',
           'test_graph_fusion_p800_compiler','test_graph_fusion_precision','test_graph_fusion_cuda_tanh']
result=unittest.TextTestRunner(verbosity=2).run(unittest.defaultTestLoader.loadTestsFromNames(names))
(ROOT/('gpu-tests.json' if gpu else 'cpu-tests.json')).write_text(json.dumps(dict(tests=result.testsRun,failures=len(result.failures),errors=len(result.errors),skipped=len(result.skipped),successful=result.wasSuccessful()),indent=2))
raise SystemExit(0 if result.wasSuccessful() else 1)
