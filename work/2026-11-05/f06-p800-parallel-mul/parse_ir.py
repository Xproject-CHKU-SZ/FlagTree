from pathlib import Path
from dataclasses import fields
import json,importlib.util
from triton._C.libtriton import ir,xpu
from triton.backends.xpu.compiler import XPUOptions,XPUBackend
root=Path(__file__).resolve().parent;repo=root.parents[2];old=repo/'work/2026-11-04/f06-p800-special-opt'
case=json.loads((old/'remote-final/results/case-072/result.json').read_text());opts=next(c for c in case['compiles'] if c['metadata']['is_sdnn'])['metadata'];params={x.name:opts[x.name] for x in fields(XPUOptions) if x.name in opts};params['grid']=tuple(params['grid']);opt=XPUOptions(**params)
ctx=ir.context();ir.load_dialects(ctx);xpu.load_dialects(ctx)
f=next((old/'initial-probes/probes/initial-ir').glob('case-072-prepare-*.mlir'));m=ir.parse_mlir_module(str(f),ctx);m.context=ctx
m=XPUBackend.make_ttxir(m,dict(opts,grid=tuple(opts['grid'])),opt)
for p in (root/'offline-ir').glob('*.mlir'):
 new=ir.parse_mlir_module(str(p),ctx);new.context=ctx;assert new.verify(),p
print('native dialect verification',len(list((root/'offline-ir').glob('*.mlir'))))
