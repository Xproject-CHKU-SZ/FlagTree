"""Compatibility preserves the old unbounded cache length; no global patch."""
import importlib.util
from pathlib import Path
import sys
from types import SimpleNamespace, ModuleType

import pytest
import torch
from transformers.cache_utils import DynamicCache


@pytest.fixture
def pilot():
    path=Path(__file__).parents[1]/'scripts/run_dynamic_text_pilot.py'
    spec=importlib.util.spec_from_file_location('legacy_pilot',path)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    return module


def test_lengths_keep_all_previous_tokens(pilot):
    cache=SimpleNamespace(get_max_cache_shape=lambda layer:-1,get_seq_length=lambda layer:[0,12,31][layer])
    for layer in range(3):
        for new in (1,8,64):
            assert pilot.legacy_unbounded_usable_length(cache,new,layer)==[0,12,31][layer]


def test_bounded_cache_is_not_silently_supported(pilot):
    cache=SimpleNamespace(get_max_cache_shape=lambda layer:16,get_seq_length=lambda layer:12)
    with pytest.raises(RuntimeError,match='unbounded'):
        pilot.legacy_unbounded_usable_length(cache,8)


def test_only_reviewed_module_binding_changes(pilot,monkeypatch):
    name='transformers_modules.fixed_reviewed_cache_fixture'
    source=ModuleType(name);source.DynamicCache=DynamicCache
    monkeypatch.setitem(sys.modules,name,source)
    inner=type('Inner',(),{'__module__':name,'config':SimpleNamespace(use_cache=True)})()
    model=SimpleNamespace(_first_module=lambda:SimpleNamespace(auto_model=inner))
    result=pilot.install_local_legacy_cache(model)
    assert not result['global_transformers_modified']
    assert source.DynamicCache is not DynamicCache
    assert not hasattr(DynamicCache,'get_usable_length')
    empty=source.DynamicCache.from_legacy_cache(None)
    assert empty.get_usable_length(8)==0


def test_unreviewed_module_is_rejected(pilot):
    inner=SimpleNamespace(config=SimpleNamespace(use_cache=True))
    model=SimpleNamespace(_first_module=lambda:SimpleNamespace(auto_model=inner))
    with pytest.raises(RuntimeError,match='reviewed custom'):
        pilot.install_local_legacy_cache(model)


def test_native_cache_updates_on_ppu(pilot):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0)!='PPU-ZW810E':
        pytest.skip('requires PPU-ZW810E')
    cache=DynamicCache()
    for length in (8,24,64):
        previous=cache.get_seq_length()
        assert pilot.legacy_unbounded_usable_length(cache,length)==previous
        k=torch.randn(2,2,length,16,device='cuda');v=torch.randn_like(k)
        out_k,out_v=cache.update(k,v,0)
        assert cache.get_seq_length()==previous+length
        torch.testing.assert_close(out_k[:,:,-length:],k,atol=0,rtol=0)
        torch.testing.assert_close(out_v[:,:,-length:],v,atol=0,rtol=0)
