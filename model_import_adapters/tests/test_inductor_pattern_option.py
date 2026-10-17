"""Explicit numeric recovery keeps fullgraph, dynamic inputs and normal defaults."""
import importlib.util
from pathlib import Path
import subprocess
import sys

import pytest
import torch


def load():
    path=Path(__file__).parents[1]/'scripts/run_dynamic_text_pilot.py'
    spec=importlib.util.spec_from_file_location('pattern_pilot',path)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    return module,path


def test_option_is_opt_in_and_fresh():
    pilot,_=load()
    assert pilot.compilation_options(False)=={}
    assert pilot.compilation_options(True)=={'pattern_matcher':False}
    options=pilot.compilation_options(True);options['pattern_matcher']=True
    assert pilot.compilation_options(True)=={'pattern_matcher':False}


def test_cli_documents_explicit_setting():
    _,path=load()
    result=subprocess.run([sys.executable,str(path),'--help'],capture_output=True,text=True)
    assert result.returncode==0
    assert '--disable-inductor-pattern-matcher' in result.stdout


def test_dynamic_attention_remains_fullgraph(tmp_path):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0)!='PPU-ZW810E':
        pytest.skip('requires PPU-ZW810E')
    pilot,_=load()
    class Attention(torch.nn.Module):
        def forward(self,x):
            score=(x@x.transpose(-1,-2))*0.25
            return score.softmax(-1)@x
    module=Attention().cuda().eval();x=torch.randn(2,24,16,device='cuda')
    dims=({0:torch.export.Dim.DYNAMIC(min=1,max=4),1:torch.export.Dim.DYNAMIC(min=8,max=64)},)
    ep=torch.export.export(module,(x,),dynamic_shapes=dims,strict=False).run_decompositions()
    path=tmp_path/'attention.pt2';torch.export.save(ep,path)
    restored=torch.export.load(path).module()
    compiled=torch.compile(restored,fullgraph=True,dynamic=True,options=pilot.compilation_options(True))
    for b,s in [(1,8),(2,24),(4,64),(2,8),(1,64)]:
        x=torch.randn(b,s,16,device='cuda')
        with torch.inference_mode():
            torch.testing.assert_close(compiled(x),module(x),atol=3e-4,rtol=3e-4)
