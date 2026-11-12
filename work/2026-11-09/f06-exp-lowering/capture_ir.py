"""Capture stage evidence from the v6 baseline TLE build without an IR override."""
import os
from pathlib import Path
import re
import sys
os.environ['TRITON_CACHE_DIR']='/tmp/f06-baseline-exp-ir'
os.environ['TRITON_STORE_BINARY_ONLY']='0'
import torch
from triton.backends import llvm19_toolchain as tc
from triton.experimental.graph_fusion import _p800_reduce as red

def show(label, source, pattern):
    matches=[line.strip() for line in source.splitlines() if re.search(pattern,line)]
    print(label,len(matches),'example',matches[:2],flush=True)

original=tc.llir_to_object
def examine(ir,*args,**kwargs):
    if '_tle_row_softmax' in ir:
        show('LLVM19 llc input (vector exp calls)',ir,r'call <16 x float> @llvm\.exp2\.v16f32')
        show('LLVM19 llc input (scalar exp calls)',ir,r'call float @llvm\.exp2\.f32')
    return original(ir,*args,**kwargs)
tc.llir_to_object=examine
x=torch.randn(2048,2048).cuda()
b=torch.randn(2048).cuda()
fn,proof=red.compile(dict(kind='add_softmax',m=2048,n=2048,dtype='float32',eps=0.),(x,b))
y=fn([x,b])[0]
torch.testing.assert_close(y.cpu(),torch.softmax(x+b,-1).cpu(),rtol=.0003,atol=.0003)
cache=Path(os.environ['TRITON_CACHE_DIR'])
for ext,pattern in [('ttir',r'\bmath\.exp\b'),('ttxir',r'vexpf|math\.exp\b'),('llir',r'llvm\.exp2')]:
    path,=list(cache.rglob('_tle_row_softmax.'+ext))
    show(path.name,path.read_text(),pattern)
print('TILE',proof['tiles'])
