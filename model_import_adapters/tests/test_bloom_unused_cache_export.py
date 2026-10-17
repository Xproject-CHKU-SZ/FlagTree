"""Bloom embedding exports must not expose an unused mutable KV cache."""
import pytest
import torch
from transformers import BloomConfig, BloomModel


def test_bloom_no_cache_dynamic_fullgraph_on_ppu(tmp_path):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
        pytest.skip("requires PPU-ZW810E; CPU model inference is not a reference")

    class Output(torch.nn.Module):
        def __init__(self):
            super().__init__()
            self.model = BloomModel(BloomConfig(vocab_size=128, hidden_size=32,
                                               n_layer=1, n_head=4)).cuda().float().eval()

        def forward(self, ids, mask):
            return self.model(input_ids=ids, attention_mask=mask, return_dict=True).last_hidden_state

    model = Output().eval()
    inputs = [(torch.randint(1, 128, (b, s), device="cuda:0"),
               torch.ones((b, s), dtype=torch.long, device="cuda:0"))
              for b, s in [(1, 8), (2, 24), (4, 64), (2, 8), (1, 64)]]
    with torch.inference_mode():
        originals = [model(*args) for args in inputs]
    model.model.config.use_cache = False
    dynamic = tuple({0: torch.export.Dim.DYNAMIC(min=1, max=4),
                     1: torch.export.Dim.DYNAMIC(min=8, max=64)} for _ in range(2))
    ep = torch.export.export(model, inputs[1], strict=False, dynamic_shapes=dynamic).run_decompositions()
    path = tmp_path / "bloom.pt2"
    torch.export.save(ep, path)
    loaded = torch.export.load(path).module()
    compiled = torch.compile(loaded, fullgraph=True, dynamic=True)
    with torch.inference_mode():
        for args, original in zip(inputs, originals):
            reference = model(*args)
            torch.testing.assert_close(reference, original, atol=3e-4, rtol=3e-4)
            torch.testing.assert_close(loaded(*args), original, atol=3e-4, rtol=3e-4)
            torch.testing.assert_close(compiled(*args), original, atol=3e-4, rtol=3e-4)
