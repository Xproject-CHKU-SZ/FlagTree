import hashlib, inspect, json, platform, re
from pathlib import Path
import torch,torch_xmlir,triton
from triton._C import libtriton
from triton.backends.xpu import compiler
def md(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
print(json.dumps(dict(torch=torch.__version__,triton=triton.__version__,python=platform.python_version(),torch_compile_file=inspect.getsourcefile(torch.compile),torch_compile=inspect.getsource(torch.compile),lib=libtriton.__file__,lib_sha256=md(libtriton.__file__),compiler_py=compiler.__file__,compiler_py_sha256=md(compiler.__file__)),ensure_ascii=False))
roots=[Path(torch_xmlir.__file__).parent,Path(triton.__file__).parent]
for root in roots:
    definitions=[]
    for f in root.rglob('*'):
        if not f.is_file() or f.suffix not in ('.h','.hpp','.cpp','.c','.xpu','.cu','.cuh','.inl'):continue
        try:
            for i,l in enumerate(f.read_text(errors='ignore').splitlines(),1):
                if re.search(r'\b(softmax_fwd|tensor_calc_k_nk|primitive_exp)\s*(<|\()',l) and len(definitions)<80:
                    definitions.append([str(f),i,l.strip()[:220]])
        except OSError:pass
    print(json.dumps(dict(root=str(root),hits=definitions)))
