"""PPU-only asymmetric task regression; never run a CPU model reference."""
import importlib.util
from pathlib import Path

import pytest
import torch


def test_document_and_query_outputs_remain_distinct_and_dynamic(tmp_path):
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
        pytest.skip("requires PPU-ZW810E")
    path = Path(__file__).parents[1] / "scripts/run_dynamic_text_pilot.py"
    spec = importlib.util.spec_from_file_location("noinstruct_pilot", path)
    pilot = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(pilot)

    class Outputs(torch.nn.Module):
        def forward(self, hidden, mask):
            return pilot.noinstruct_task_outputs(hidden, mask)

    module = Outputs().cuda().eval()
    h = torch.randn(2, 24, 16, device="cuda:0")
    mask = torch.ones((2, 24), dtype=torch.long, device="cuda:0")
    dims = tuple({0: torch.export.Dim.DYNAMIC(min=1, max=4),
                  1: torch.export.Dim.DYNAMIC(min=8, max=64)} for _ in range(2))
    ep = torch.export.export(module, (h, mask), dynamic_shapes=dims, strict=False).run_decompositions()
    pt2 = tmp_path / "asymmetric.pt2"
    torch.export.save(ep, pt2)
    restored = torch.export.load(pt2).module()
    compiled = torch.compile(restored, fullgraph=True, dynamic=True)
    for batch, sequence in ((1, 8), (2, 24), (4, 64), (2, 8), (1, 64)):
        hidden = torch.randn(batch, sequence, 16, device="cuda:0")
        mask = torch.ones((batch, sequence), dtype=torch.long, device="cuda:0")
        mask[:, -2:] = 0
        with torch.inference_mode():
            literal = torch.stack((hidden[:, 0, :],
                (hidden * mask.unsqueeze(2)).sum(1) / mask.sum(-1).view(-1, 1)), dim=1)
            assert literal.shape == (batch, 2, 16)
            torch.testing.assert_close(module(hidden, mask), literal, rtol=0, atol=0)
            torch.testing.assert_close(restored(hidden, mask), literal, rtol=0, atol=0)
            torch.testing.assert_close(compiled(hidden, mask), literal, rtol=3e-4, atol=3e-4)
