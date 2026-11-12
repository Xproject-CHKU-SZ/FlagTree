"""Compare SiLU epilogue encodings while checking eager's exceptional values."""
import importlib.util
import json
import statistics
import sys
from pathlib import Path
import torch
from triton.experimental.graph_fusion import _p800_native_mm as original
from cases import Mat

torch.set_grad_enabled(False)
torch.manual_seed(61)
source=Path(original.__file__).read_text()
guard="z = tl.where(z == -float('inf'), float('nan'), tl.where(z == float('inf'), z, z * tl.sigmoid(z)))"
variants={
    'shipped':(guard,False),
    'single_negative':("z = tl.where(z == -float('inf'), float('nan'), z * tl.sigmoid(z))",True),
    'single_positive':("z = tl.where(z == float('inf'), z, z * tl.sigmoid(z))",True),
    'multiply':("z = z * tl.sigmoid(z)",True),
    'negative_zero_product':("z = z * tl.sigmoid(z) + tl.minimum(z, 0.) * 0.",True),
}
for m in (65,513,2048):
    k,n=64,(2048 if m==2048 else 1024)
    xs=[torch.randn(s).cuda() for s in ((m,k),(k,n),(n,))]
    g=torch.fx.symbolic_trace(Mat('matmul_bias_silu',n)); ref=g(*xs)
    sp=[*xs[:2],xs[2].clone()];sp[-1][:4]=torch.tensor([torch.inf,-torch.inf,torch.nan,-0.]).cuda()
    r=g(*sp); functions={'eager':g}; checks={}
    for name,(code,wide) in variants.items():
        if name=='shipped': mod=original
        else:
            path=Path('/tmp')/('silu_'+name+'.py');s=source.replace(guard,code)
            if wide:s=s.replace("if not spec.get('even_k', True) or spec['act'] == 1:", "if not spec.get('even_k', True):")
            path.write_text(s)
            loader=importlib.util.spec_from_file_location(original.__package__+'._silu_'+name,path)
            mod=importlib.util.module_from_spec(loader);sys.modules[loader.name]=mod;loader.loader.exec_module(mod)
        try:
            spec=mod.match(g,xs);fn,proof=mod.compile(spec,xs); y=fn(*xs)[0]; z=fn(*sp)[0]
            functions[name]=fn;checks[name]=dict(finite=torch.allclose(y,ref,rtol=.0003,atol=.0003),
                special=torch.allclose(z,r,rtol=.0003,atol=.0003,equal_nan=True),
                got=z[0,:4].cpu().tolist(),expected=r[0,:4].cpu().tolist())
        except Exception as e:checks[name]=dict(error=str(e)[:250])
    for f in functions.values():
        for _ in range(8):v=f(*xs)
    times={k:[] for k in functions}
    for i in range(7):
        names=list(functions);names=names[i%len(names):]+names[:i%len(names)]
        for name in names:
            s,e=torch.cuda.Event(True),torch.cuda.Event(True);s.record()
            for _ in range(60):v=functions[name](*xs)
            e.record();torch.cuda.synchronize();times[name].append(s.elapsed_time(e)*1000/60)
    print('EPILOGUE '+json.dumps(dict(m=m,n=n,us={k:statistics.median(v) for k,v in times.items()},checks=checks)),flush=True)
