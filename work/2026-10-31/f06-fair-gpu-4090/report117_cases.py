"""Exact historical graph/input construction, independent current-gate case metadata.
No compiler/device import at module load. This module does not launch GPU work.
"""
import ast
import copy
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
SOURCE_SHA256 = "c82c698a35b879a39e9278e313d0c26f432ddaaffeff1d372e1ceb50fbd84000"

def digest_tensor(t):
    return hashlib.sha256(t.detach().cpu().contiguous().view(__import__('torch').uint8).numpy().tobytes()).hexdigest()

def cases():
    data = json.loads((HERE / 'CASES.json').read_text())
    assert data['count'] == len(data['cases']) == 117
    return data['cases']

def original_namespace():
    import torch
    import torch.nn.functional as F
    source = HERE / 'reference/benchmark_current_speedup.py'
    assert hashlib.sha256(source.read_bytes()).hexdigest() == SOURCE_SHA256
    tree = ast.parse(source.read_text())
    main = next(n for n in tree.body if isinstance(n, ast.FunctionDef) and n.name == 'main')
    nodes = [copy.deepcopy(n) for n in main.body if isinstance(n, (ast.ClassDef, ast.FunctionDef)) and n.name in ('Module', 'Binary', 'rand')]
    assert [n.name for n in nodes] == ['Module', 'Binary', 'rand']
    namespace = {'torch': torch, 'F': F}
    # Lift original definitions unchanged; no mathematical AST transformation.
    exec(compile(ast.fix_missing_locations(ast.Module(body=nodes, type_ignores=[])), str(source), 'exec'), namespace)
    return namespace, {n.name: ast.dump(n, include_attributes=False) for n in nodes}

def build_cpu_case(case):
    import torch
    ns, ast_binding = original_namespace()
    kind, dtype, m, n = case['kind'], getattr(torch, case['dtype']), case['M'], case['N']
    rand = ns['rand']
    matrix = kind.startswith('matmul')
    assert case['K'] == (64 if matrix else None)
    inputs = (rand((m,64),dtype),rand((64,n),dtype),rand((n,),dtype)) if matrix else (rand((m,n),dtype),rand((n,),dtype))
    module = (ns['Module'] if matrix else ns['Binary'])(kind,n).to(device='cpu',dtype=dtype)
    graph = torch.fx.symbolic_trace(module)
    actual_inputs = [{'shape':list(t.shape),'sha256':digest_tensor(t)} for t in inputs]
    actual_parameters = {name:digest_tensor(t) for name,t in graph.named_parameters()}
    assert actual_inputs == case['inputs'], ('historical input mismatch',case['case_id'])
    assert actual_parameters == case['parameters'], ('historical parameter mismatch',case['case_id'])
    names = ('x','w','b') if matrix else ('x','y')
    spec = dict(schema='f06-resource-benchmark-case/1', case_id=case['case_id'],
        suite='report117',kind=kind,family='matrix' if matrix else 'vector',dtype=case['dtype'],
        dtype_label={'float32':'fp32','float16':'fp16','bfloat16':'bf16'}[case['dtype']],
        tolerance=copy.deepcopy(case['tolerance']),seed=61,
        shape=dict(M=m,N=n,K=64) if matrix else dict(rows=m,cols=n),cols=None if matrix else n,
        inputs=[dict(name=name,shape=list(t.shape),role=('bias_placeholder' if name=='b' else 'input'),generation='historical_seed61_verified',dtype=case['dtype']) for name,t in zip(names,inputs)],
        output_tuple=False,
        historical_case_ordinal=case['ordinal'],
        special_suite=dict(broadened=True,categories=['nan','posinf','neginf','poszero','negzero','tiny','tiny_half','pos_1e_7','neg_1e_7'],vector_modes=['first_element','all_elements','all_inputs'],matrix_mode='one_hot',matrix_bias_handling='explicit_zero_weight_bias_propagation',not_the_frozen_18_kind_suite=True))
    binding = dict(source_sha256=SOURCE_SHA256,definition_ast_sha256={k:hashlib.sha256(v.encode()).hexdigest() for k,v in ast_binding.items()},inputs=actual_inputs,parameters=actual_parameters,graph=str(graph.graph))
    return graph,inputs,spec,binding
