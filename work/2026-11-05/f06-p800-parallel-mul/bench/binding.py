"""Record pre-LLVM IR and the actual ELF/device image selected by Inductor."""
import ast,hashlib,re
from pathlib import Path
from contextlib import contextmanager

def sha(x):return hashlib.sha256(x).hexdigest()
class Bound:
    def __init__(self,root):self.root=root;root.mkdir();self.by_image={};self.pending=None;self.tuners=[]
    @contextmanager
    def capture(self):
        from torch._inductor.runtime.triton_heuristics import CachingAutotuner as H
        from triton.backends.xpu.compiler import XPUBackend as X
        from triton.experimental.graph_fusion._p800_native_activation import serialize
        before=H._precompile_config;llvm=X.make_llir;this=self
        def ir(mod,metadata,opt):
            if this.pending is not None:
                s=serialize(mod,this.root,'capture');this.pending.append(s.encode())
            return llvm(mod,metadata,opt)
        def config(tuner,*a,**kw):
            prior=this.pending;this.pending=[]
            try:
                res=before(tuner,*a,**kw);binary=res[0] if isinstance(res,tuple) else getattr(res,'kernel',res)
                if this.pending:
                    assert len(this.pending)==1
                    byte=this.pending[0];h=sha(byte);(this.root/(h+'.mlir')).write_bytes(byte)
                    this.by_image[(str(binary.hash),sha(binary.asm['elf']),sha(binary.asm['xpubin']))]=h
                # Never launch a previously rejected oversized cluster stack.
                asm=binary.asm.get('asm',''); asm=asm.decode(errors='replace') if isinstance(asm,bytes) else str(asm)
                sizes=re.findall(r'XPU_KERNEL_STACK_SIZE_\w+:\s*\n\s*\.long\s+(\d+)',asm)
                if not binary.metadata.is_sdnn and any(int(v)>8000 for v in sizes):raise RuntimeError('cluster stack exceeds historical diagnostic bound')
                return res
            finally:this.pending=prior
        H._precompile_config=config;X.make_llir=staticmethod(ir)
        try:yield
        finally:H._precompile_config=before;X.make_llir=staticmethod(llvm)
    def selected(self,proof,kind):
        from torch._inductor.codecache import PyCodeCache
        found=[]
        for reg in proof['regions']:
            code=reg['source_code'];mods=[m for m in PyCodeCache.modules if getattr(m,'__file__',None) and Path(m.__file__).read_text()==code];assert mods
            for node in ast.walk(ast.parse(code)):
                if not(isinstance(node,ast.Assign) and isinstance(node.value,ast.Call) and ast.unparse(node.value.func)=='async_compile.triton'):continue
                possible=[getattr(m,node.targets[0].id) for m in mods]
                assert all(len(t.launchers)==1 for t in possible)
                identities={(str(t.launchers[0].__globals__['bin'].hash),sha(t.launchers[0].__globals__['bin'].asm['elf']),sha(t.launchers[0].__globals__['bin'].asm['xpubin'])) for t in possible}
                assert len(identities)==1, 'ambiguous native wrapper bindings'
                tuner=possible[-1];assert len(tuner.launchers)==1
                launch=tuner.launchers[0];binary=launch.__globals__['bin'];resource=reg['resource'];assert bool(binary.metadata.is_sdnn)==(resource=='sdnn')
                meta=binary.metadata._asdict();row=dict(resource=resource,binding=node.targets[0].id,config=dict(kwargs=launch.config.kwargs,warps=launch.config.num_warps,stages=launch.config.num_stages),metadata={k:v for k,v in meta.items() if k.startswith('f06_')},binary_hash=str(binary.hash))
                for ext in ('elf','xpubin'):
                    blob=binary.asm[ext];assert isinstance(blob,bytes) and blob;row[ext]=sha(blob);(self.root/(row[ext]+'.'+ext)).write_bytes(blob)
                ir=self.by_image.get((row['binary_hash'],row['elf'],row['xpubin']));assert ir,('no live pre-LLVM trace for selected binary',row)
                code=(self.root/(ir+'.mlir')).read_text();row.update(ir=ir,ew_mul=len(re.findall(r'\bsdnn\.ew mul\b',code)),ew_linear=len(re.findall(r'\bsdnn\.ew linear\b',code)))
                if resource=='sdnn':
                    if kind=='legacy':assert meta.get('f06_symmetric_multiply') and row['ew_mul']==2 and row['ew_linear']>=1,row
                    else:assert meta.get('f06_single_multiply') and row['ew_mul']==1,row
                self.tuners.append((tuner,str(binary.hash),row['elf'],row['xpubin']));found.append(row)
        assert found;return found
    def unchanged(self):
        for t,key,elf,image in self.tuners:
            assert len(t.launchers)==1;b=t.launchers[0].__globals__['bin'];assert (str(b.hash),sha(b.asm['elf']),sha(b.asm['xpubin']))==(key,elf,image)
