"""Bounded public export functionalization; never invent storage for wrappers."""
from collections import Counter
import operator

from support import fingerprint, require, save


def snapshot(graph):
    return [{'name':n.name, 'op':n.op, 'target':str(n.target),
             'args':str(n.args), 'kwargs':str(n.kwargs)} for n in graph.nodes]


def inventory(graph):
    nodes = list(graph.nodes)
    return {'nodes':len(nodes),
            'operations':dict(sorted(Counter(str(n.target) for n in nodes
                                             if n.op == 'call_function').items())),
            'silu_mul_pairs':sum(n.op == 'call_function' and str(n.target) == 'aten.mul.Tensor'
                and any(hasattr(a,'target') and str(a.target) == 'aten.silu.default'
                        for a in n.args) for n in nodes)}


def issues(graph):
    """Reject wrapper/global-state ops BEFORE running the storage observer."""
    errors = []
    for node in graph.nodes:
        target = str(node.target)
        if node.op not in ('placeholder','call_function','output'):
            errors.append({'node':node.name, 'reason':'unsupported_graph_node', 'target':target})
        elif node.op == 'call_function':
            schema = getattr(node.target,'_schema',None)
            if any(s in target for s in ('_add_batch_dim','_remove_batch_dim','_vmap_', '_functorch')):
                reason = 'functorch_wrapper_remaining'
            elif schema is None and node.target is not operator.getitem:
                reason = 'unknown_side_effect_or_higher_order_op'
            elif schema is not None and any(a.alias_info and a.alias_info.is_write
                                            for a in schema.arguments):
                reason = 'mutation_remaining_after_functionalization'
            else:
                continue
            errors.append({'node':node.name, 'reason':reason, 'target':target})
    return errors


def input_contract(exported):
    # Names may be renamed by an upstream pass. Targets/kinds and order may not.
    return [(s.kind.name, str(s.target), type(s.arg).__name__)
            for s in exported.graph_signature.input_specs]


def normalize(exported, directory=None):
    """One explicit candidate, no decomposition-table/search or mask substitutions."""
    before = inventory(exported.graph_module.graph)
    report = {'status':'attempting', 'method':'ExportedProgram.run_decompositions(decomp_table={})',
        'before':before, 'before_input_contract':input_contract(exported),
        'storage_unwrapping':False, 'mask_replacement':False, 'native_fallback':False,
        'numerical_authorization':'none; requires fresh native/export/kernel/full-graph 0/0 gate'}
    if directory is not None:
        save(directory/'export-original-graph.json',snapshot(exported.graph_module.graph))
        save(directory/'export-normalization-attempt.json',report)
    # Public functionalization, empty optional table: no hand-written causal mask,
    # no catch-and-ignore of untyped_storage(), no private get_unwrapped().
    derived = exported.run_decompositions(decomp_table={})
    removed = []
    for node in list(derived.graph_module.graph.nodes):
        if node.op == 'call_function' and str(node.target).startswith('aten._assert_tensor_metadata'):
            require(not node.users,'metadata assertion has live users')
            removed.append(node.name)
            derived.graph_module.graph.erase_node(node)
    derived.graph_module.graph.lint()
    derived.graph_module.recompile()
    after = inventory(derived.graph_module.graph)
    problems = issues(derived.graph_module.graph)
    contract_ok = input_contract(derived) == input_contract(exported)
    silu_ok = before['operations'].get('aten.silu.default',0) == after['operations'].get('aten.silu.default',0)
    candidates_ok = before['silu_mul_pairs'] == after['silu_mul_pairs'] and after['silu_mul_pairs'] > 0
    report.update({'status':'structurally_accepted_runtime_pending' if
                   contract_ok and silu_ok and candidates_ok and not problems else 'structurally_rejected',
        'input_contract_preserved':contract_ok, 'silu_coverage_preserved':silu_ok,
        'candidate_coverage_preserved':candidates_ok, 'after':after,
        'after_input_contract':input_contract(derived), 'issues':problems,
        'removed_unused_metadata_assertions':removed,
        'derived_graph_sha256':fingerprint(snapshot(derived.graph_module.graph))})
    if directory is not None:
        save(directory/'export-derived-graph.json',snapshot(derived.graph_module.graph))
        save(directory/'export-normalization.json',report)
    require(contract_ok,'normalization changed input/state contract')
    require(not problems,'normalized graph not G1-compatible: '+str(problems[:8]))
    require(silu_ok,
            'normalization changed SiLU coverage; explicit lowering adapter required')
    require(candidates_ok,
            'normalization changed/lost SiLU->Mul candidates')
    return derived, report
