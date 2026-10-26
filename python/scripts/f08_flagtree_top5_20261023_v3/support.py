"""TOP5 scope and binding contracts; no torch/triton import before device guard."""
from __future__ import annotations
import importlib.util
from pathlib import Path
import sys

HERE = Path(__file__).resolve().parent
COMPARE = HERE.parent/'f08_flagtree_model_compare_20261022'
sys.path.insert(0, str(COMPARE))
from suite_contracts import (ARMS, PROTOCOL, SHARED, choose_card, fingerprint, load_bridge,
    manifest, read_cards, require, require_idle, require_mapping, resolve_resource,
    save, sha, summarize, verify_baselines)


def load_file(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def old_worker():
    return load_file('top5_frozen_compare_worker', COMPARE/'worker.py')


def source_identity():
    return {p.name: sha(p) for p in HERE.iterdir() if p.suffix in ('.py', '.json')}


def identity(bridge, args):
    return fingerprint({'bridge_environment':bridge.environment(), 'top5_sources':source_identity(),
        'frozen_compare_sources':{p.name:sha(p) for p in COMPARE.glob('*.py')},
        'shared_sources':{n:sha(SHARED/n) for n in ('common.py','run_models.py')},
        'planner_sources':{n:sha(args.legality.parent/n) for n in
                          ('schema.py','liveness.py','offset_planner.py','inplace_legality.py')},
        'physical_card':args.physical_card, 'protocol':'TOP5 fp32, 64 texts, warmup5/measured30, strict0/0'})


def same(bridge, left, right):
    result=bridge.same_output(left,right,0,0)
    require(result['passed'] and result['max_abs_diff']==0,'strict 0/0 numerical gate failed')
    return result


def require_layout(fact, shape):
    require(isinstance(shape,list) and bool(shape),'scalar/unknown shape is not an FFN candidate')
    require(fact.get('dtype') == 'float32' and fact.get('shape') == shape and
            fact.get('contiguous') is True and fact.get('byte_offset') == 0 and
            fact.get('device') == 'cuda:0', 'requires same-shape dense offset-zero PPU fp32')
    require(type(fact.get('pointer')) is int and fact['pointer']>0 and fact['pointer']%4==0,
            'missing/unaligned runtime storage pointer')
    size = 4
    for dim in shape:
        require(type(dim) is int and dim > 0, 'unknown/empty shape')
        size *= dim
    require(fact.get('nbytes') == size, 'full storage ownership required')


def mul_candidate(node, records, legal_inputs):
    """Only SiLU -> same-shape Mul, never generic mask/broadcast multiplication."""
    # 【选哪些节点优化】这里只接受“SiLU 输出 × 另一等形状 Tensor”。
    # 不将广播、mask 乘法或任意 Mul 自动视为可原地执行，也没有融合 SiLU。
    require(str(node.target) == 'aten.mul.Tensor', 'not Tensor Mul')
    require(len(node.args) == 2 and not node.kwargs, 'unexpected Mul signature')
    require(all(hasattr(x, 'name') for x in node.args), 'Mul must have two tensor node arguments')
    silu = [i for i,x in enumerate(node.args) if str(x.target) == 'aten.silu.default']
    require(len(silu) == 1, 'requires exactly one direct SiLU producer')
    index = silu[0]
    # legal_inputs 是 G03 对完整 storage/全部别名与消费者检查后的白名单；
    # 单凭图上 SiLU→Mul 相邻，或某个 tensor 最后使用，都不能跳过该条件。
    require('tensor.'+node.args[index].name in legal_inputs, 'G03 rejected selected SiLU storage')
    names = [x.name for x in node.args] + [node.name]
    require(all(n in records for n in names), 'missing runtime layout evidence')
    shape = records[node.name]['shape']
    for n in names:
        # 当前桥接只覆盖同形状、dense fp32、offset=0、占满 storage 的布局。
        # 不在这里自动 contiguous()/cast/copy，以免悄悄改变数值或计时口径。
        require_layout(records[n], shape)
    require(len({records[n]['pointer'] for n in names}) == 3,
            'native inputs/output alias unexpectedly; explicit adapter required')
    # 把“可以覆盖哪一侧”显式交给执行器，而不是执行时随便挑一个空闲地址。
    return {'shape': shape, 'destination_arg': index,
            'input_nodes': [x.name for x in node.args], 'operation': 'aten.mul.Tensor',
            'pattern': 'SiLU output multiplied by same-shape second operand; SiLU itself remains native'}


def select_case_models(catalog):
    ids = ('BAAI/bge-m3', 'Qwen/Qwen3-Embedding-0.6B')
    entries = {m['model_id']: m for m in catalog['execution_candidates']}
    require(all(name in entries for name in ids), 'TOP5 resource entries missing')
    # Use the exact BGE-M3 revision already validated, not a mutable refs/main.
    return [{**entries[name], 'default_run': True,
             **({'revision': '5617a9f61b028005a4858fdac845db406aefb181'}
                if name == 'BAAI/bge-m3' else {})} for name in ids]
