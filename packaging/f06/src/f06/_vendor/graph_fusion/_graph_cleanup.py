"""Remove dead and repeated pure tensor expressions from a static inference graph."""
import operator
import struct

import torch
from torch import fx
from torch._subclasses.fake_tensor import FakeTensor


# These operations read values and return fresh storage. Views, RNG, out=,
# mutation and arbitrary Python/custom operations have different contracts.
_FRESH = {operator.add, operator.sub, operator.mul, operator.neg,
          torch.add, torch.sub, torch.mul, torch.neg, torch.relu, torch.sigmoid,
          torch.tanh, torch.abs, torch.ops.aten.neg.default, torch.ops.aten.relu.default,
          torch.ops.aten.sigmoid.default, torch.ops.aten.tanh.default, torch.ops.aten.abs.default}
for _packet in (torch.ops.aten.add, torch.ops.aten.sub, torch.ops.aten.mul):
    _FRESH.update((_packet.Tensor, _packet.Scalar))


_FRESH_METHODS = {'add', 'sub', 'mul', 'neg', 'relu', 'sigmoid', 'tanh', 'abs'}
# Dense contractions may be discarded if unused. Keep independent executions
# for CSE because backend reduction algorithms can have different determinism.
_DEAD_FUNCTIONS = {torch.mm, torch.bmm, torch.matmul, operator.matmul, torch.nn.functional.linear,
                   torch.ops.aten.mm.default, torch.ops.aten.bmm.default, torch.ops.aten.matmul.default,
                   torch.ops.aten.linear.default, torch.reshape, torch.transpose, torch.permute,
                   torch.unsqueeze, torch.flatten, torch.ops.aten.view.default, torch.ops.aten.reshape.default,
                   torch.ops.aten.transpose.int, torch.ops.aten.permute.default, torch.ops.aten.unsqueeze.default,
                   torch.ops.aten.slice.Tensor, torch.ops.aten.detach.default, torch.ops.aten.alias.default}
_DEAD_METHODS = {'mm', 'bmm', 'matmul', 'reshape', 'view', 'transpose', 'permute', 'unsqueeze',
                 'flatten', 'squeeze', 'detach', 'contiguous'}


class UnsupportedPlan(ValueError):
    pass


def literal_key(value, nodes):
    """Keep FX bindings, container ordering, scalar types and floating-point bits."""
    if isinstance(value, fx.Node):
        return ('node', nodes[value])
    if type(value) is float:
        return (float, struct.pack('!d', value))
    if value is None or type(value) in (bool, int, str, torch.dtype, torch.device, torch.layout, torch.memory_format):
        return (type(value), value)
    if type(value) in (tuple, list, fx.immutable_collections.immutable_list):
        return (type(value), tuple(literal_key(v, nodes) for v in value))
    if type(value) in (dict, fx.immutable_collections.immutable_dict):
        return (type(value), tuple((literal_key(k, nodes), literal_key(v, nodes)) for k,v in value.items()))
    if type(value) is slice:
        return (slice, literal_key((value.start, value.stop, value.step), nodes))
    raise UnsupportedPlan()


def tensor_layout(value):
    if type(value) not in (torch.Tensor, torch.nn.Parameter, FakeTensor) or value.layout != torch.strided or value.is_quantized:
        raise UnsupportedPlan()
    layout = (*value.shape, *value.stride(), value.storage_offset())
    if any(type(v) is not int for v in layout):
        raise UnsupportedPlan()
    return (value.dtype, value.device, tuple(value.shape), tuple(value.stride()), value.storage_offset(),
            value.requires_grad, value.is_conj(), value.is_neg(), torch.is_inference(value))


def _value(node):
    return node.meta.get('example_value', node.meta.get('val'))


def _has_static_tensor_operands(node):
    if 'out' in node.kwargs or node.is_impure():
        return False
    # Known concrete tensor operands exclude Python overloads and unguarded subclasses.
    try:
        tensor_layout(_value(node))
        for arg in node.all_input_nodes:
            tensor_layout(_value(arg))
        literal_key((node.args, node.kwargs), {n: n for n in node.all_input_nodes})
    except UnsupportedPlan:
        return False
    return bool(node.all_input_nodes)


def prune_graph(gm):
    """Only merge temporaries whose storage identity cannot be observed by a user."""
    nodes = tuple(gm.graph.nodes)
    fresh = set()
    discardable = set()
    for node in nodes:
        functional = node.op == 'call_function'
        method = node.op == 'call_method'
        value_only = (functional and node.target in _FRESH) or (method and node.target in _FRESH_METHODS)
        read_only = (functional and node.target in _DEAD_FUNCTIONS) or (method and node.target in _DEAD_METHODS)
        if (value_only or read_only) and _has_static_tensor_operands(node):
            discardable.add(node)
            if value_only:
                fresh.add(node)
    dead = merged = 0
    for node in reversed(nodes):
        if node in discardable and not node.users:
            gm.graph.erase_node(node)
            dead += 1

    expressions = {}
    for node in tuple(gm.graph.nodes):
        if node not in fresh:
            # Views, unknown calls and writes may expose storage or change an operand.
            if node.op != 'placeholder':
                expressions.clear()
            continue
        if any(user not in fresh for user in node.users):
            continue
        key = (node.op, node.target, literal_key((node.args, node.kwargs), {n:n for n in node.all_input_nodes}),
               tensor_layout(_value(node)))
        if key in expressions:
            node.replace_all_uses_with(expressions[key])
            gm.graph.erase_node(node)
            merged += 1
        else:
            expressions[key] = node
    if dead or merged:
        gm.graph.lint()
        gm.recompile()
    return {'dead_nodes': dead, 'common_subexpressions': merged}
