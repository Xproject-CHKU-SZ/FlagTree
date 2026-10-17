"""PPU regression for the symbolic stride Min guard in grouped KV repetition."""
from pathlib import Path

import pytest
import torch


class _RepeatKv(torch.nn.Module):
    def forward(self, value):
        hidden = value.transpose(1, 2)
        batch, heads, sequence, width = hidden.shape
        return hidden[:, :, None].expand(batch, heads, 8, sequence, width).reshape(batch, heads * 8, sequence, width)


def test_bounded_dynamic_grouped_kv_roundtrip_on_ppu(tmp_path: Path):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
        pytest.skip("requires PPU-ZW810E; does not execute a CPU reference")
    value = torch.randn(2, 24, 2, 128, device="cuda:0")
    model = _RepeatKv().to("cuda:0").eval()
    ep = torch.export.export(model, (value,), strict=False, dynamic_shapes=({
        0: torch.export.Dim.DYNAMIC(min=1, max=4),
        1: torch.export.Dim.DYNAMIC(min=8, max=64),
    },))
    path = tmp_path / "grouped-kv.pt2"
    torch.export.save(ep.run_decompositions(), path)
    loaded = torch.export.load(path).module()
    assert ep.range_constraints
    input_node = next(node for node in ep.graph.nodes if node.op == "placeholder")
    assert isinstance(input_node.meta["val"].shape[0], torch.SymInt)
    assert isinstance(input_node.meta["val"].shape[1], torch.SymInt)
    for batch, sequence in ((1, 8), (2, 24), (4, 64), (2, 8), (1, 64)):
        probe = torch.randn(batch, sequence, 2, 128, device="cuda:0")
        with torch.no_grad():
            torch.testing.assert_close(model(probe), loaded(probe), rtol=0, atol=0)
    for shape, message in (((2, 65, 2, 128), "<= 64"), ((2, 7, 2, 128), ">= 8"), ((5, 24, 2, 128), "<= 4")):
        bad = torch.randn(*shape, device="cuda:0")
        with pytest.raises((RuntimeError, AssertionError), match=message):
            loaded(bad)
