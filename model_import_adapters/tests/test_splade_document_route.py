"""Preserve the saved sparse document route and leave the query branch intact."""
import importlib.util
from pathlib import Path
from types import SimpleNamespace

import pytest
import torch
from sentence_transformers.models import Router
from sentence_transformers.sparse_encoder.models import MLMTransformer, SpladePooling


def pilot():
    path=Path(__file__).parents[1]/"scripts/run_dynamic_text_pilot.py"
    spec=importlib.util.spec_from_file_location("router_pilot",path)
    module=importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def model(default_route="document"):
    # Metadata fixture uses the exact native types without loading a pretrained backbone.
    mlm=MLMTransformer.__new__(MLMTransformer)
    torch.nn.Module.__init__(mlm)
    router=Router({'document':[mlm,SpladePooling(pooling_strategy='max',word_embedding_dimension=17)],
                   'query':[torch.nn.Identity()]},default_route=default_route)
    class Wrapper(torch.nn.Sequential):
        max_active_dims=None
        def _first_module(self):return self[0]
    return Wrapper(router)


def test_document_pool_replacement_preserves_query_and_route():
    module=pilot();original=model();query=original[0].sub_modules['query']
    pool=module.validate_splade_pipeline(original,route='document')
    result=module.replace_splade_dynamic_pool(original,route='document')
    assert result['route']=='document'
    assert original[0].sub_modules['query'] is query
    assert original[0].default_route=='document'
    assert original[0].sub_modules['document'][1] is not pool


def test_nondefault_or_unknown_route_rejected():
    module=pilot()
    with pytest.raises(RuntimeError,match='default document'):
        module.validate_splade_pipeline(model(default_route='query'),route='document')
    with pytest.raises(RuntimeError,match='default document'):
        module.validate_splade_pipeline(model(),route='query')


def test_document_route_dynamic_output_compiles(tmp_path):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0)!='PPU-ZW810E':
        pytest.skip('requires PPU-ZW810E')
    module=pilot();original=model();native=original[0].sub_modules['document'][1].cuda().eval()
    module.replace_splade_dynamic_pool(original,route='document')
    pool=original[0].sub_modules['document'][1]
    class Output(torch.nn.Module):
        def forward(self,logits,mask):
            return pool({'token_embeddings':logits,'attention_mask':mask})['sentence_embedding']
    graph=Output().cuda().eval()
    x=torch.randn(2,24,17,device='cuda');mask=torch.ones(2,24,dtype=torch.long,device='cuda')
    dims=tuple({0:torch.export.Dim.DYNAMIC(min=1,max=4),1:torch.export.Dim.DYNAMIC(min=8,max=64)} for _ in range(2))
    ep=torch.export.export(graph,(x,mask),dynamic_shapes=dims,strict=False)
    path=tmp_path/'document.pt2';torch.export.save(ep,path)
    compiled=torch.compile(torch.export.load(path).module(),fullgraph=True,dynamic=True)
    for b,s in [(1,8),(2,24),(4,64),(2,8),(1,64)]:
        x=torch.randn(b,s,17,device='cuda');mask=torch.ones(b,s,dtype=torch.long,device='cuda');mask[:,-2:]=0
        with torch.inference_mode():
            expected=native({'token_embeddings':x,'attention_mask':mask})['sentence_embedding']
            torch.testing.assert_close(compiled(x,mask),expected,atol=3e-4,rtol=3e-4)
