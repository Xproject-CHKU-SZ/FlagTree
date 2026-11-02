"""Untimed clone of the actually selected fused kernel, with one extra FP32 store.

Original output and all upstream math remain intact. Its output must agree bitwise
with the public plan. Only this clone writes the pre-tanh argument; it is NEVER
passed to the timing helper.
"""
import ast
import copy
import hashlib
import importlib.util
import inspect
import json
from pathlib import Path
import shutil


def selected_artifact(plan, directory, prefix):
    from triton.experimental.graph_fusion._inference import _single_inductor_kernel
    from torch._inductor.runtime.triton_heuristics import triton_hash_to_path_key, triton_cache_dir
    compiled = plan._compiled_graph
    if inspect.isfunction(compiled):
        compiled = inspect.getclosurevars(compiled).nonlocals['compiled']
    wrapped = compiled.current_callable
    if inspect.isfunction(wrapped):
        wrapped = inspect.getclosurevars(wrapped).nonlocals['model']
    tuner = wrapped.__func__.__globals__[_single_inductor_kernel(plan.generated_sources)]
    matches = [r for r in tuner.compile_results
               if triton_hash_to_path_key(r.kernel.hash) == tuner.launchers[0].cache_hash]
    assert len(matches) == 1
    chosen = matches[0]
    binary = chosen.kernel
    if hasattr(binary, 'asm'):
        for ext, data in binary.asm.items():
            (directory / (prefix + '.' + ext)).write_bytes(data if isinstance(data, bytes) else str(data).encode())
    else:
        cache = Path(triton_cache_dir(tuner.triton_meta.get('device', 0))) / triton_hash_to_path_key(binary.hash)
        for artifact in cache.glob(binary.name + '.*'):
            shutil.copy2(artifact, directory / (prefix + artifact.suffix))
    metadata = (binary.metadata._asdict() if hasattr(binary, 'metadata') else
                json.loads((directory / (prefix + '.json')).read_text()))
    options = tuner._create_compile_options(chosen.config, chosen.compile_meta)
    description = dict(metadata=metadata, config_kwargs=chosen.config.kwargs,
                       template=tuner.inductor_meta.get('config_args'), options=options,
                       constants=chosen.compile_meta['constants'], cubin_sha256=
                       hashlib.sha256((directory / (prefix + '.cubin')).read_bytes()).hexdigest())
    # Find the actual generated kernel's Python string, without executing its wrapper.
    source = '\n'.join(plan.generated_sources)
    strings = [n.args[1].value for n in ast.walk(ast.parse(source))
               if isinstance(n, ast.Call) and isinstance(n.func, ast.Attribute)
               and n.func.attr == 'triton' and len(n.args) >= 2
               and isinstance(n.args[1], ast.Constant) and isinstance(n.args[1].value, str)]
    assert len(strings) == 1
    return tuner, chosen, description, strings[0]


def tanh_argument(call):
    if not isinstance(call, ast.Call) or not isinstance(call.func, ast.Attribute):
        return None
    if call.func.attr == 'tanh' and isinstance(call.func.value, ast.Name) and call.func.value.id == 'libdevice':
        return call.args[0]
    if call.func.attr == 'inline_asm_elementwise' and call.args and 'use_small' in ast.literal_eval(call.args[0]):
        return next(k.value.elts[0] for k in call.keywords if k.arg == 'args')
    return None


def normalized_body(source):
    fn = next(n for n in ast.parse(source).body if isinstance(n, ast.FunctionDef))
    fn.name = 'kernel'
    fn.decorator_list = []

    class Normalize(ast.NodeTransformer):
        def visit_Call(self, node):
            arg = tanh_argument(node)
            if arg is not None:
                # Production inline ASM explicitly upcasts an already-FP32 argument.
                if isinstance(arg, ast.Call) and isinstance(arg.func, ast.Attribute) and arg.func.attr == 'to':
                    assert ast.unparse(arg.args[0]) == 'tl.float32'
                    arg = arg.func.value
                return ast.Call(func=ast.Name(id='TANH', ctx=ast.Load()), args=[arg], keywords=[])
            return self.generic_visit(node)

    return ast.dump(Normalize().visit(fn), include_attributes=False)


def build_capture(plan, directory, prefix, spec, allow_nonfinite=False):
    import torch
    import triton
    from triton.compiler import ASTSource
    tuner, chosen, description, source = selected_artifact(plan, directory, prefix)
    tree = ast.parse(source)
    fn = next(n for n in tree.body if isinstance(n, ast.FunctionDef))
    tanh_args = [arg for n in ast.walk(fn) if (arg := tanh_argument(n)) is not None]
    assert len(tanh_args) == 1
    stores = [n for n in ast.walk(fn) if isinstance(n, ast.Call)
              and isinstance(n.func, ast.Attribute) and ast.unparse(n.func) == 'tl.store']
    assert len(stores) == 1, 'Only a single-output, fully fused kernel is eligible for this probe'
    store = copy.deepcopy(stores[0])
    output_names = [n.id for n in ast.walk(store.args[0]) if isinstance(n, ast.Name) and n.id.startswith('out_ptr')]
    assert len(output_names) == 1

    class Redirect(ast.NodeTransformer):
        def visit_Name(self, node):
            if node.id == output_names[0]:
                node.id = 'capture_t'
            return node

    store.args[0] = Redirect().visit(store.args[0])
    store.args[1] = copy.deepcopy(tanh_args[0])
    fn.body.append(ast.Expr(value=store))
    fn.name = 'capture_tanh_argument'
    fn.decorator_list = [ast.Attribute(value=ast.Name(id='triton', ctx=ast.Load()), attr='jit', ctx=ast.Load())]
    fn.args.args.append(ast.arg(arg='capture_t'))
    imports = [n for n in tree.body if isinstance(n, (ast.Import, ast.ImportFrom))]
    probe_source = ast.unparse(ast.fix_missing_locations(ast.Module(body=imports + [fn], type_ignores=[]))) + '\n'
    path = directory / (prefix + '-capture.py')
    path.write_text(probe_source)
    module_spec = importlib.util.spec_from_file_location(prefix.replace('-', '_') + '_capture', path)
    module = importlib.util.module_from_spec(module_spec)
    module_spec.loader.exec_module(module)
    meta = chosen.compile_meta
    signature = dict(meta['signature'], capture_t='*fp32')
    attrs = copy.deepcopy(meta['configs'][0])
    attrs[(len(fn.args.args) - 1,)] = [['tt.divisibility', 16]]
    binary = triton.compile(ASTSource(module.capture_tanh_argument, signature,
                                     meta['constants'], attrs),
                            target=triton.runtime.driver.active.get_current_target(), options=description['options'])
    for ext in ('ttir', 'ttgir', 'ptx', 'cubin'):
        data = binary.asm[ext]
        (directory / (prefix + '-capture.' + ext)).write_bytes(data if isinstance(data, bytes) else data.encode())
    if spec['kind'] == 'matmul_bias_gelu_tanh':
        cfg = description['template']
        grid = (triton.cdiv(spec['M'], cfg['BLOCK_M']) * triton.cdiv(spec['N'], cfg['BLOCK_N']), 1, 1)
    else:
        grid = (triton.cdiv(spec['M'] * spec['N'], chosen.config.kwargs['XBLOCK']), 1, 1)

    def capture(inputs):
        out = torch.empty((spec['M'], spec['N']), dtype=inputs[0].dtype, device=inputs[0].device)
        values = torch.full(out.shape, float('nan'), dtype=torch.float32, device=out.device)
        runtime_values = list(inputs) + [out]
        if spec['kind'] == 'add_gelu_tanh':
            runtime_values.append(out.numel())
        # CompiledKernel.__getitem__ forwards the full Python argument list to
        # the C launcher, including placeholders for constexprs. Inductor's
        # custom launcher normally supplies those placeholders on our behalf.
        args = []
        for index, parameter in enumerate(fn.args.args[:-1]):
            if parameter.arg in meta['constants']:
                args.append(meta['constants'][parameter.arg])
            elif (index,) in meta['constants']:
                args.append(meta['constants'][(index,)])
            else:
                args.append(runtime_values.pop(0))
        assert not runtime_values
        binary[grid](*args, values)
        torch.cuda.synchronize()
        if not allow_nonfinite:
            assert torch.isfinite(values).all(), 'Every pre-tanh value must be written and finite'
        return out, values

    description.update(capture_in_timing=False, capture_grid=grid,
                       capture_cubin_sha256=hashlib.sha256(binary.asm['cubin']).hexdigest())
    return capture, description, normalized_body(source)


def build_matched_pair(native_plan, directory, prefix, spec):
    """Complete generated native kernel and the same kernel with only tanh replaced.

    Supplemental only: both wrappers allocate a fresh result, and each launches
    exactly one full fusion kernel. The main public plans remain untouched.
    """
    import torch
    import triton
    from triton.compiler import ASTSource
    from triton.experimental.graph_fusion import _cuda_tanh as policy
    tuner, chosen, description, source = selected_artifact(native_plan, directory, prefix+'-reference')
    meta = chosen.compile_meta
    if spec['kind'] == 'matmul_bias_gelu_tanh':
        cfg = description['template']
        grid = (triton.cdiv(spec['M'], cfg['BLOCK_M']) * triton.cdiv(spec['N'], cfg['BLOCK_N']), 1, 1)
    else:
        grid = (triton.cdiv(spec['M']*spec['N'], chosen.config.kwargs['XBLOCK']), 1, 1)
    functions, records, bodies = {}, {}, {}
    for variant in ('native_matched', 'precise_matched'):
        tree = ast.parse(source)
        fn = next(n for n in tree.body if isinstance(n, ast.FunctionDef))
        fn.name = variant
        fn.decorator_list = [ast.Attribute(value=ast.Name(id='triton', ctx=ast.Load()), attr='jit', ctx=ast.Load())]
        if variant == 'precise_matched':
            class ReplaceTanh(ast.NodeTransformer):
                replacements = 0

                def visit_Call(self, node):
                    arg = tanh_argument(node)
                    if arg is not None:
                        self.replacements += 1
                        return ast.parse(policy.tanh_expression(ast.unparse(arg)), mode='eval').body
                    return self.generic_visit(node)
            rewrite = ReplaceTanh()
            fn = rewrite.visit(fn)
            assert rewrite.replacements == 1
        imports = [n for n in tree.body if isinstance(n, (ast.Import, ast.ImportFrom))]
        text = ast.unparse(ast.fix_missing_locations(ast.Module(body=imports+[fn], type_ignores=[])))+'\n'
        path = directory/(prefix+'-'+variant+'.py')
        path.write_text(text)
        module_spec = importlib.util.spec_from_file_location(prefix.replace('-','_')+variant, path)
        module = importlib.util.module_from_spec(module_spec)
        module_spec.loader.exec_module(module)
        binary = triton.compile(ASTSource(getattr(module, variant), meta['signature'], meta['constants'], meta['configs'][0]),
                                target=triton.runtime.driver.active.get_current_target(), options=description['options'])
        for ext in ('ttir','ttgir','ptx','cubin'):
            data = binary.asm[ext]
            (directory/(prefix+'-'+variant+'.'+ext)).write_bytes(data if isinstance(data,bytes) else data.encode())

        def bind(binary, parameters):
            def invoke(*inputs):
                output = torch.empty((spec['M'],spec['N']),dtype=inputs[0].dtype,device=inputs[0].device)
                runtime_values = list(inputs)+[output]
                if spec['kind'] == 'add_gelu_tanh':
                    runtime_values.append(output.numel())
                full_args = []
                for index, parameter in enumerate(parameters):
                    if parameter.arg in meta['constants']:
                        full_args.append(meta['constants'][parameter.arg])
                    elif (index,) in meta['constants']:
                        full_args.append(meta['constants'][(index,)])
                    else:
                        full_args.append(runtime_values.pop(0))
                assert not runtime_values
                binary[grid](*full_args)
                return output
            return invoke

        functions[variant] = bind(binary, fn.args.args)
        bodies[variant] = normalized_body(text)
        records[variant] = dict(grid=grid, options=description['options'], constants=meta['constants'],
                                template=description['template'], metadata=binary.metadata._asdict(),
                                binary_hash=binary.hash,cubin_sha256=hashlib.sha256(binary.asm['cubin']).hexdigest(),
                                public_plan=False, full_fusion_kernel=True, added_diagnostic_stores=False)
    assert bodies['native_matched'] == bodies['precise_matched']
    return functions, records
