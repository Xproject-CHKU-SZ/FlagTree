import os, sys, unittest, json, hashlib
from pathlib import Path
ROOT = Path(__file__).resolve().parent
import torch, triton, triton.experimental
triton.experimental.__path__.insert(0, str(ROOT/'source/python/triton/experimental'))
sys.path.insert(0, str(ROOT/'source/python/test/unit/runtime'))
os.environ['F06_RUN_CUDA_TESTS']='1'
torch.set_num_threads(1)
modules=['test_graph_fusion_static','test_graph_fusion_static_acceptance','test_graph_fusion_precision','test_graph_fusion_p800','test_graph_fusion_large_matmul_cuda']
suite=unittest.TestSuite(unittest.defaultTestLoader.loadTestsFromName(n) for n in modules)
# Small path regression: all 45 report combinations, normal outputs and launch count.
suite.addTests(unittest.defaultTestLoader.loadTestsFromName('test_graph_fusion_small_matmul_cuda.SmallMatmulCUDA.test_report_shapes_all_epilogues_one_launch_and_fresh_outputs'))
result=unittest.TextTestRunner(verbosity=2).run(suite)
(ROOT/'test-results.json').write_text(json.dumps(dict(testsRun=result.testsRun,failures=result.failures,errors=result.errors,skipped=result.skipped,successful=result.wasSuccessful()),indent=2,default=str))
sys.exit(0 if result.wasSuccessful() else 1)
