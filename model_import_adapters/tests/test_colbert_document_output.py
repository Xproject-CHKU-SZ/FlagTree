"""Keep native ragged normalized document vectors and an explicit validity mask."""
import importlib.util
from pathlib import Path

import pytest
import torch


@pytest.fixture
def pilot():
    path=Path(__file__).parents[1]/'scripts/run_dynamic_text_pilot.py'
    spec=importlib.util.spec_from_file_location('colbert_pilot',path)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    return module


def test_padded_representation_is_lossless_and_dynamic(pilot,tmp_path):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0)!='PPU-ZW810E':
        pytest.skip('requires PPU-ZW810E')
    class Output(torch.nn.Module):
        def forward(self,x,ids,mask):
            return pilot.colbert_document_output(x,ids,mask,[3,5])
    model=Output().cuda().eval()
    x=torch.randn(2,24,16,device='cuda');ids=torch.arange(48,device='cuda').reshape(2,24)%8;mask=torch.ones_like(ids)
    dims=tuple({0:torch.export.Dim.DYNAMIC(min=1,max=4),1:torch.export.Dim.DYNAMIC(min=8,max=64)} for _ in range(3))
    ep=torch.export.export(model,(x,ids,mask),dynamic_shapes=dims,strict=False).run_decompositions()
    path=tmp_path/'multivectors.pt2';torch.export.save(ep,path);loaded=torch.export.load(path).module()
    compiled=torch.compile(loaded,fullgraph=True,dynamic=True)
    for b,s in [(1,8),(2,24),(4,64),(2,8),(1,64)]:
        x=torch.randn(b,s,16,device='cuda');ids=torch.arange(b*s,device='cuda').reshape(b,s)%8;mask=torch.ones_like(ids);mask[:,-2:]=0
        with torch.inference_mode():
            actual=compiled(x,ids,mask);valid=mask.bool()&(ids!=3)&(ids!=5)
            assert actual.shape==(b,s,17)
            torch.testing.assert_close(actual[...,-1],valid.float(),atol=0,rtol=0)
            for i in range(b):
                native=torch.nn.functional.normalize(x[i][valid[i]],p=2,dim=1)
                torch.testing.assert_close(actual[i,valid[i],:-1],native,atol=3e-4,rtol=3e-4)
                assert not actual[i,~valid[i],:-1].count_nonzero()


def test_native_encode_reference_preserves_ragged_values(pilot):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0)!='PPU-ZW810E':
        pytest.skip('requires PPU-ZW810E')
    class Model:
        prompts={}
        skiplist=[3]
        def tokenize(self,texts,is_query=False,pad=False):
            width=8 if pad else 4
            return {'input_ids':torch.tensor([[1,3,2]+[0]*(width-3)]*len(texts)),
                    'attention_mask':torch.tensor([[1,1,1]+[0]*(width-3)]*len(texts))}
        def skiplist_mask(self,ids,skiplist):return ids!=3
        def encode(self,texts,**kwargs):
            values=self.tokenize(texts,is_query=False)
            return [torch.eye(2,device='cuda') for _ in texts]
    model=Model();inputs=model.tokenize(['text'],pad=True)
    result=pilot.encode_colbert_document_reference(model,['text'],device='cuda:0',expected_inputs=inputs)
    assert result.shape==(1,8,3)
    torch.testing.assert_close(result[0,[0,2],:-1],torch.eye(2,device='cuda'),atol=0,rtol=0)
    assert result[0,:,-1].sum()==2
    assert 'tokenize' not in model.__dict__
