from pathlib import Path
import hashlib,json,re,subprocess,torch,torch_xmlir,triton
from triton._C import libtriton
symbols=('tensor_calc_k_nk','softmax_fwd','reduce_mt','layer_norm_fwd','fc_one_loop','relu_fwd','silu_fwd','gelu_highprecision_nv','gelu_highprecision_nv_tanh')
hits={k:[] for k in symbols};body_pat=re.compile(r'\b('+'|'.join(symbols)+r')\s*(?:<[^;{}]*?>)?\s*\(')
for root in (Path(torch_xmlir.__file__).parent,Path(triton.__file__).parent,Path(torch.__file__).parent/'include'):
    for p in root.rglob('*'):
        if p.suffix not in ('.h','.cuh','.hpp','.cpp','.cc','.cu','.xpu','.inl') or not p.is_file():continue
        source=p.read_text(errors='replace')
        for match in body_pat.finditer(source):
            sym=match.group(1);start=match.start()
            hits[sym].append([str(p),source.count('\n',0,start)+1,source[start:start+120].replace('\n',' ')])
print('SOURCE_INDEX '+json.dumps(hits))
header=Path(torch_xmlir.__file__).parent/'include/xpu/kernel/cluster_primitive.h'
lines=header.read_text().splitlines();print('PRIMITIVE '+json.dumps(dict(file=str(header),line539=lines[538:563],sha256=hashlib.sha256(header.read_bytes()).hexdigest())))
readelf=subprocess.run(['readelf','--version-info',libtriton.__file__],text=True,capture_output=True)
versions=sorted(set(re.findall(r'\bGLIBC_(\d+(?:\.\d+)+)',readelf.stdout)),key=lambda v:list(map(int,v.split('.'))))
print('ABI '+json.dumps(dict(max_glibc=versions[-1] if versions else None,versions=versions)))
