"""PPU-only native SPLADE equivalence, dynamic export, roundtrip and compile."""
import importlib.util
from pathlib import Path

import pytest
import torch
from sentence_transformers.sparse_encoder.models import SpladePooling


@pytest.fixture
def pilot():
    if not torch.cuda.is_available() or torch.cuda.get_device_name(0) != "PPU-ZW810E":
        pytest.skip("requires PPU-ZW810E")
    path = Path(__file__).parents[1] / "scripts/run_dynamic_text_pilot.py"
    spec = importlib.util.spec_from_file_location("splade_pilot", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


@pytest.mark.parametrize("activation", ["relu", "log1p_relu"])
def test_native_values_dynamic_roundtrip_and_fullgraph(pilot, activation, tmp_path):
    class Output(torch.nn.Module):
        def forward(self, logits, mask):
            return pilot.splade_task_output(logits, mask, activation_function=activation)

    model = Output().cuda().eval()
    logits = torch.randn(2, 24, 17, device="cuda")
    mask = torch.ones(2, 24, device="cuda", dtype=torch.int64)
    dims = tuple({0: torch.export.Dim.DYNAMIC(min=1, max=4),
                  1: torch.export.Dim.DYNAMIC(min=8, max=64)} for _ in range(2))
    ep = torch.export.export(model, (logits, mask), dynamic_shapes=dims, strict=False).run_decompositions()
    assert len(ep.range_constraints) == 2
    path = tmp_path / "splade.pt2"
    torch.export.save(ep, path)
    restored = torch.export.load(path).module()
    compiled = torch.compile(restored, fullgraph=True, dynamic=True)
    for batch, sequence in ((1, 8), (2, 24), (4, 64), (2, 8), (1, 64)):
        logits = torch.randn(batch, sequence, 17, device="cuda")
        mask = torch.ones(batch, sequence, device="cuda", dtype=torch.int64)
        mask[:, -3:] = 0
        mask[0] = 0
        with torch.inference_mode():
            for chunk_size in (None, 7, 128):
                native = SpladePooling(pooling_strategy="max", activation_function=activation,
                    word_embedding_dimension=17, chunk_size=chunk_size).cuda().eval()
                expected = native({"token_embeddings": logits.clone(), "attention_mask": mask})["sentence_embedding"]
                torch.testing.assert_close(model(logits, mask), expected, atol=0, rtol=0)
                torch.testing.assert_close(restored(logits, mask), expected, atol=0, rtol=0)
                torch.testing.assert_close(compiled(logits, mask), expected, atol=3e-4, rtol=3e-4)
                assert not expected[0].count_nonzero()


def test_unreviewed_activation_is_rejected(pilot):
    with pytest.raises(ValueError, match="activation"):
        pilot.splade_task_output(None, None, activation_function="gelu")


def test_unreviewed_task_modules_are_rejected(pilot):
    class Invalid(torch.nn.Module):
        def __init__(self):
            super().__init__()
            self.pool = SpladePooling(pooling_strategy="max")
    with pytest.raises(RuntimeError, match="exactly native"):
        pilot.validate_splade_pipeline(Invalid())
