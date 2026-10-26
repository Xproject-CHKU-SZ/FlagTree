"""Small adapter from a real export graph into the EXISTING G1/G03 contracts.

No new reuse algorithm: storage facts come from PPU execution with all values
retained (diagnostics ONLY); whole-storage overwrite legality is delegated to
the existing inplace_legality.py. The measured executor releases dead values.
"""
from __future__ import annotations

from collections import Counter
import importlib.util
import operator

from contracts import fingerprint


def load_legality(path):
    import inspect
    spec = importlib.util.spec_from_file_location("f08_eval_existing_legality", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    parameters = inspect.signature(module.analyze_op_candidates).parameters
    if "expected_physical_card" not in parameters or "plan_identity" not in parameters:
        raise ValueError("existing G03 identity/physical-card guard is too old")
    return module


def graph_identity(graph):
    return fingerprint([{"name": n.name, "op": n.op, "target": str(n.target),
                         "args": str(n.args), "kwargs": str(n.kwargs)} for n in graph.nodes])


def single_tensor(result):
    import torch
    if isinstance(result, (tuple, list)) and len(result) == 1:
        result = result[0]
    if not isinstance(result, torch.Tensor):
        raise ValueError("expected one sentence_embedding tensor")
    return result


def digest(tensor):
    import hashlib
    return hashlib.sha256(tensor.detach().contiguous().cpu().numpy().tobytes()).hexdigest()


def facts(tensor):
    storage = tensor.untyped_storage()
    return {"pointer": storage.data_ptr(), "nbytes": storage.nbytes(),
            "byte_offset": tensor.storage_offset() * tensor.element_size(),
            "dtype": str(tensor.dtype).removeprefix("torch."), "shape": list(tensor.shape),
            "stride": list(tensor.stride()), "device": str(tensor.device),
            "contiguous": tensor.is_contiguous(), "numel": tensor.numel()}


def make_plan(graph, records, kinds, model_id, stream):
    # 【G1 接入】把模型图映射到 task/tensor/storage；不是 Triton 内核内部的 shared-memory 分析。
    # records 来自中间量保活的执行取证，同地址才作为当次物理别名依据；不跨进程比裸地址。
    tensors, storages, tasks = {}, {}, []
    aliases, node_tasks = {}, {}
    mutated = set()
    for node in graph.nodes:
        if node.op not in ("placeholder", "call_function", "output"):
            raise ValueError(f"unsupported graph node {node.op}: {node.name}")
        if node.op == "call_function":
            schema = getattr(node.target, "_schema", None)
            if schema is None and node.target is not operator.getitem:
                raise ValueError(f"unknown side effects/control flow: {node.target}")
            if schema:
                for i, argument in enumerate(schema.arguments):
                    if argument.alias_info and argument.alias_info.is_write:
                        value = node.args[i] if i < len(node.args) else node.kwargs.get(argument.name)
                        if hasattr(value, "name") and value.name in records:
                            f = records[value.name]
                            mutated.add((f["device"], f["pointer"]))
                        else:
                            raise ValueError(f"unresolved mutation input: {node.name}")
        if node.name in records:
            f = records[node.name]
            key = (f["device"], f["pointer"])
            if f["numel"] == 0 or not f["pointer"]:
                raise ValueError("zero-sized storage is outside this execution bridge")
            sid = aliases.setdefault(key, "storage." + node.name)
            # 按底层 storage 容量记账，不用最大的 view/expand 的逻辑 numel 推断分配量。
            kind = "input" if kinds.get(node.name) == "USER_INPUT" else (
                "parameter" if node.op == "placeholder" else "temporary")
            if sid in storages and storages[sid]["size_bytes"] != f["nbytes"]:
                raise ValueError("inconsistent storage capacity")
            storages.setdefault(sid, {"storage_id": sid, "size_bytes": f["nbytes"],
                                      "alignment": 1, "device": f["device"],
                                      "allocation_kind": kind, "source": "PPU keep-alive trace untyped_storage().nbytes()"})
            tensors[node.name] = {"tensor_id": "tensor." + node.name, "storage_id": sid,
                                  "producer": "task." + node.name if node.op == "call_function" else None,
                                  "consumers": [], "dtype": f["dtype"], "shape": f["shape"],
                                  "storage_offset_bytes": None, "source_value": node.name,
                                  "is_graph_output": False, "is_persistent": kind == "parameter",
                                  "is_mutated": False}
        if node.op == "call_function":
            tid = "task." + node.name
            inputs = ["tensor." + n.name for n in node.all_input_nodes if n.name in tensors]
            predecessors = [node_tasks[n.name] for n in node.all_input_nodes if n.name in node_tasks]
            # The explicit executor enforces exactly this order; add its serial edges.
            if tasks:
                predecessors.append(tasks[-1]["task_id"])
            tasks.append({"task_id": tid, "kernel_id": str(node.target),
                          "predecessors": sorted(set(predecessors)), "inputs": inputs,
                          "outputs": ["tensor." + node.name] if node.name in tensors else [],
                          "source_node": node.name, "region_id": None, "device": "cuda:0", "stream": stream})
            node_tasks[node.name] = tid
            for n in node.all_input_nodes:
                if n.name in tensors:
                    tensors[n.name]["consumers"].append(tid)
        elif node.op == "output":
            for n in node.all_input_nodes:
                if n.name in tensors:
                    tensors[n.name]["is_graph_output"] = True
    for name, tensor in tensors.items():
        f = records[name]
        tensor["is_mutated"] = (f["device"], f["pointer"]) in mutated
    return {"schema_version": "f08-g01-model-plan/0.1", "plan_id": "eval." + model_id.replace("/", "--"),
            "model_id": model_id, "tasks": tasks, "tensors": list(tensors.values()),
            "storages": list(storages.values()), "regions": [], "shape_bindings": {}}


def trace(module, values):
    import torch
    from torch.fx import Interpreter
    class Recorder(Interpreter):
        def __init__(self):
            super().__init__(module)
            self.keep, self.records, self.gelu_inputs = [], {}, {}
        def run_node(self, node):
            if str(node.target) == "aten.gelu.default":
                args, _ = self.fetch_args_kwargs_from_env(node)
                self.gelu_inputs[node.name] = args[0].clone()
            result = super().run_node(node)
            if isinstance(result, torch.Tensor):
                self.keep.append(result)
                self.records[node.name] = facts(result)
            elif isinstance(result, (tuple, list)) and any(isinstance(x, torch.Tensor) for x in result):
                if node.op != "output":
                    raise ValueError(f"tuple tensor node needs an explicit binding adapter: {node.name}")
            return result
    observer = Recorder()
    observer.run(*values)
    torch.cuda.synchronize()
    return observer.records, observer.gelu_inputs  # all other keep-alive refs die here


def execute_node(node, env, counts, calls, inplace, records):
    """Helper boundary ensures args/result/dest cannot leak into the next node."""
    import torch
    from torch.fx.node import map_arg
    args = map_arg(node.args, lambda n: env[n.name])
    kwargs = map_arg(node.kwargs, lambda n: env[n.name])
    if node.name in calls:
        x = args[0]
        # 【GELU 收益开关】同一 FlagTree kernel：out 申请输出，inplace 直接写回合法输入。
        # 此函数假设 calls 已经过上游筛选与正确性门禁，不自行对任意节点授权原地计算。
        dest = x if inplace else torch.empty_like(x)
        result = calls[node.name](x, dest)
        if records is not None:
            if not x.is_contiguous() or x.storage_offset() != 0 or str(x.dtype) != "torch.float32":
                raise ValueError("runtime layout differs from compiled binding contract")
            if result.data_ptr() != dest.data_ptr() or result.untyped_storage().data_ptr() != dest.untyped_storage().data_ptr():
                raise ValueError("compiled call did not return the bound storage")
    else:
        # 未接入 FlagTree 的算子保持原调用，不能据此宣称整个模型已由 FlagTree 编译。
        result = node.target(*args, **kwargs)
    env[node.name] = result
    if records is not None and isinstance(result, torch.Tensor):
        records[node.name] = digest(result)
    for source in node.all_input_nodes:
        counts[source.name] -= 1
        # 使用计数归零后只移除本执行器持有的引用；其他 view/tuple/调用者仍可延长 storage 寿命。
        # 局部 args/result/dest 随函数退出释放，避免在下个节点额外保活导致测量失真。
        if counts[source.name] == 0 and source.op != "placeholder":
            env.pop(source.name, None)
    if counts[node.name] == 0:
        env.pop(node.name, None)


def run_graph(module, values, calls, inplace=False, records=None):
    # 正常路径保留图顺序与默认异步提交；不引入逐节点全局同步或完整中间量保活。
    from torch.fx.node import map_arg
    nodes = list(module.graph.nodes)
    placeholders = [n for n in nodes if n.op == "placeholder"]
    if len(placeholders) != len(values):
        raise ValueError("placeholder binding count mismatch")
    env = {n.name: value for n, value in zip(placeholders, values)}
    counts = Counter(n.name for node in nodes for n in node.all_input_nodes)
    for node in nodes:
        if node.op == "call_function":
            execute_node(node, env, counts, calls, inplace, records)
        elif node.op == "output":
            return single_tensor(map_arg(node.args[0], lambda n: env[n.name]))
    raise ValueError("missing graph output")
