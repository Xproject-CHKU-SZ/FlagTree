"""Keep the selected full fusion body fixed; late-link a standalone tanh function."""
import ast
import copy
import importlib.util
import json
from pathlib import Path
import time

from device_link import DeviceLinker,elf_type,sha
from diagnostic import selected_artifact,tanh_argument


def write_jit(tree, directory, prefix):
    fn = next(n for n in tree.body if isinstance(n,ast.FunctionDef))
    fn.decorator_list = [ast.parse('triton.jit',mode='eval').body]
    text = ast.unparse(ast.fix_missing_locations(tree))+'\n'
    path = directory/(prefix+'.py')
    path.write_text(text)
    spec = importlib.util.spec_from_file_location(prefix.replace('-','_'),path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return getattr(module,fn.name)


def save_binary(binary,directory,prefix):
    for ext in ('ttir','ttgir','llir','ptx','cubin'):
        data = binary.asm[ext]
        (directory/(prefix+'.'+ext)).write_bytes(data if isinstance(data,bytes) else data.encode())
    (directory/(prefix+'.json')).write_text(json.dumps(binary.metadata._asdict(),indent=2,default=str)+'\n')


class FusedPrototype:
    def __init__(self, native_plan, directory, prefix, spec, linker, full_asm):
        import torch
        import triton
        from triton.compiler import ASTSource
        self.spec,self.directory,self.prefix = spec,directory,prefix
        self.linker,self.full_asm = linker,full_asm
        self.linked = {}
        self.events = []
        tuner,chosen,description,source = selected_artifact(native_plan,directory,prefix+'-native')
        self.meta = chosen.compile_meta
        self.options = description['options']
        root = ast.parse(source)
        original_fn = next(n for n in root.body if isinstance(n,ast.FunctionDef))
        self.parameters = copy.deepcopy(original_fn.args.args)
        imports = [n for n in root.body if isinstance(n,(ast.Import,ast.ImportFrom))]
        root = ast.Module(body=imports+[original_fn],type_ignores=[])
        body_tree = copy.deepcopy(root)
        fn = body_tree.body[-1]
        fn.name = 'f06_gelu_body'
        body_tree.body.insert(0,ast.parse('from device_external import external_tanh').body[0])

        class Externalize(ast.NodeTransformer):
            count = 0

            def visit_Call(self,node):
                arg = tanh_argument(node)
                if arg is not None:
                    self.count += 1
                    return ast.Call(func=ast.Name(id='external_tanh',ctx=ast.Load()),args=[arg],keywords=[])
                return self.generic_visit(node)

        rewrite = Externalize()
        rewrite.visit(fn)
        assert rewrite.count == 1
        jit = write_jit(body_tree,directory,prefix+'-body')
        options = dict(self.options,ptx_options='--compile-only')
        start = time.perf_counter_ns()
        self.body = triton.compile(ASTSource(jit,self.meta['signature'],self.meta['constants'],self.meta['configs'][0]),
                                  target=triton.runtime.driver.active.get_current_target(),options=options)
        body_compile_ms = (time.perf_counter_ns()-start)/1e6
        assert elf_type(self.body.asm['cubin']) == 1
        assert 'f06_tanh' in self.body.asm['ptx'] and '.extern .func' in self.body.asm['ptx']
        assert 'ex2.approx' not in self.body.asm['ptx'], 'Body must not contain a tanh implementation'
        save_binary(self.body,directory,prefix+'-body')
        self.body_object = self.body.asm['cubin']
        if spec['kind']=='matmul_bias_gelu_tanh':
            cfg = description['template']
            self.grid = (triton.cdiv(spec['M'],cfg['BLOCK_M'])*triton.cdiv(spec['N'],cfg['BLOCK_N']),1,1)
        else:
            self.grid = (triton.cdiv(spec['M']*spec['N'],chosen.config.kwargs['XBLOCK']),1,1)

        screen_tree = copy.deepcopy(root)
        screen_fn = screen_tree.body[-1]
        screen_fn.name = 'f06_screen_tanh'
        hits = [(index,tanh_argument(node)) for index,statement in enumerate(screen_fn.body)
                for node in ast.walk(statement) if tanh_argument(node) is not None]
        assert len(hits)==1
        cut,targ = hits[0]
        stores = [node for node in ast.walk(screen_fn) if isinstance(node,ast.Call) and ast.unparse(node.func)=='tl.store']
        assert len(stores)==1 and len(stores[0].args)>=3
        store = stores[0]
        out_names = [node.id for node in ast.walk(store.args[0]) if isinstance(node,ast.Name) and node.id.startswith('out_ptr')]
        assert len(out_names)==1
        out_name = out_names[0]
        mask = ast.unparse(store.args[2])
        if mask == 'None':
            mask = 'True'
        text = (f'_screen_a = tl.abs({ast.unparse(targ)})\n'
                f'_screen_s = tl.where({mask}, (_screen_a < 0.6).to(tl.int32), 1)\n'
                f'_screen_l = tl.where({mask}, ((_screen_a >= 0.6) & (_screen_a < float("inf"))).to(tl.int32), 1)\n')
        for _ in range(2 if spec['kind'].startswith('matmul') else 1):
            text += '_screen_s = tl.min(_screen_s, 0)\n_screen_l = tl.min(_screen_l, 0)\n'
        text += f'tl.store({out_name} + tl.program_id(0), _screen_s + 2 * _screen_l)\n'
        screen_fn.body = screen_fn.body[:cut]+ast.parse(text).body
        screen_jit = write_jit(screen_tree,directory,prefix+'-screen')
        screen_signature = dict(self.meta['signature'])
        screen_signature[out_name] = '*i32'
        start = time.perf_counter_ns()
        self.screen_binary = triton.compile(ASTSource(screen_jit,screen_signature,self.meta['constants'],self.meta['configs'][0]),
                                           target=triton.runtime.driver.active.get_current_target(),options=self.options)
        self.screen_binary._init_handles()
        screen_compile_ms = (time.perf_counter_ns()-start)/1e6
        save_binary(self.screen_binary,directory,prefix+'-screen')
        self.flags = torch.empty((self.grid[0],),device='cuda',dtype=torch.int32)
        self.host_flags = torch.empty_like(self.flags,device='cpu',pin_memory=True)
        self.transfer_done = torch.cuda.Event()
        self.record = dict(body_compile_ms=body_compile_ms,screen_compile_and_load_ms=screen_compile_ms,
                           body_sha256=sha(self.body_object),body_elf_type=1,grid=self.grid,
                           selected_config=description,screen_flag_bytes=self.flags.numel()*4,
                           screen_recomputes_matmul=spec['kind'].startswith('matmul'),events=self.events)

    def arguments(self,inputs,output):
        remaining = list(inputs)+[output]
        if self.spec['kind']=='add_gelu_tanh':
            remaining.append(self.spec['M']*self.spec['N'])
        args = []
        for index,param in enumerate(self.parameters):
            if param.arg in self.meta['constants']:
                args.append(self.meta['constants'][param.arg])
            elif (index,) in self.meta['constants']:
                args.append(self.meta['constants'][(index,)])
            else:
                args.append(remaining.pop(0))
        assert not remaining
        return args

    def screen_gpu(self,*inputs):
        self.screen_binary[self.grid](*self.arguments(inputs,self.flags))
        return self.flags

    def screen(self,inputs):
        import numpy as np
        import torch
        start = time.perf_counter_ns()
        self.screen_gpu(*inputs)
        self.host_flags.copy_(self.flags,non_blocking=True)
        self.transfer_done.record(torch.cuda.current_stream())
        self.transfer_done.synchronize()
        flags = self.host_flags.numpy()
        small = bool(np.all(flags==1))
        large = bool(np.all(flags==2))
        mode = 'small' if small else 'large' if large else 'general'
        return mode,dict(wall_us=(time.perf_counter_ns()-start)/1e3,
                         small_blocks=int(np.count_nonzero(flags==1)),large_blocks=int(np.count_nonzero(flags==2)),
                         mixed_or_nonfinite_blocks=int(np.count_nonzero(flags==0)),total_blocks=len(flags))

    def get_linked(self,mode):
        if mode in self.linked:
            return self.linked[mode],dict(cache_hit=True,mode=mode)
        assert sha(self.body.asm['cubin']) == self.record['body_sha256']
        function,compile_record = self.linker.compile_function(mode,self.full_asm)
        image,link_record = self.linker.link(self.body_object,function['object'])
        assert self.body.module is None, 'The unresolved main object must never be loaded by itself'
        binary = copy.copy(self.body)
        binary.kernel = image
        binary.asm = dict(self.body.asm,cubin=image)
        binary.hash = sha(image)
        binary.metadata = self.body.metadata._replace(hash=binary.hash)
        from triton.compiler.compiler import make_backend
        binary.packed_metadata = make_backend(binary.metadata.target).pack_metadata(binary.metadata)
        binary.module,binary.function,binary._run = None,None,None
        start = time.perf_counter_ns()
        binary._init_handles()
        load_ms = (time.perf_counter_ns()-start)/1e6
        prefix = self.prefix+'-linked-'+mode
        (self.directory/(prefix+'.cubin')).write_bytes(image)
        (self.directory/('function-'+mode+'.cu')).write_text(function['source'])
        (self.directory/('function-'+mode+'.ptx')).write_text(function['ptx'])
        (self.directory/('function-'+mode+'.o')).write_bytes(function['object'])
        event = dict(mode=mode,cache_hit=False,compile=compile_record,link=link_record,
                     load_and_launcher_ms=load_ms,n_regs=binary.n_regs,n_spills=binary.n_spills,
                     body_sha256=self.record['body_sha256'])
        self.events.append(event)

        def invoke(*inputs):
            import torch
            output = torch.empty((self.spec['M'],self.spec['N']),dtype=inputs[0].dtype,device=inputs[0].device)
            binary[self.grid](*self.arguments(inputs,output))
            return output

        invoke.binary = binary
        invoke.mode = mode
        self.linked[mode] = invoke
        return invoke,event

    def __call__(self,*inputs):
        mode,_ = self.screen(inputs)
        fn,_ = self.get_linked(mode)
        return fn(*inputs)
