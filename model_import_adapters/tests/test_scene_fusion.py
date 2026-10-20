"""IR legality tests use CPU synthetic tensors, not CPU model references."""
import torch

from model_import_adapters.scene_fusion import eligible_mlp_probe, rewrite_small_mlp_epilogues


def reference_replacement(a, w, b):
    return torch.nn.functional.gelu(torch.addmm(b, a, w), approximate="none")


def make_graph(*, approximate="none", multiuse=False, dtype=torch.float32,
               transpose=True, n=1536, alpha=1, metadata=True):
    root = torch.nn.Module()
    w = torch.randn(n, 384, dtype=dtype).t()
    root.register_buffer("weight", w if transpose else w.contiguous())
    root.register_buffer("bias", torch.randn(n, dtype=dtype))
    graph = torch.fx.Graph()
    x = graph.placeholder("x"); w = graph.get_attr("weight"); b = graph.get_attr("bias")
    mm = graph.call_function(torch.ops.aten.addmm.default, (b, x, w), {"alpha": alpha})
    view = graph.call_function(torch.ops.aten.view.default, (mm, [2, 8, n]))
    gelu = graph.call_function(torch.ops.aten.gelu.default, (view,), {"approximate": approximate})
    graph.output((gelu, mm) if multiuse else gelu)
    if metadata:
        x.meta["val"] = torch.empty(16, 384, dtype=dtype)
        w.meta["val"] = root.weight
        b.meta["val"] = root.bias
    return torch.fx.GraphModule(root, graph)


def test_positive_semantics_and_original_graph_unchanged():
    original = make_graph(); code = original.code
    optimized, matched = rewrite_small_mlp_epilogues(original, reference_replacement)
    x = torch.randn(16, 384)
    with torch.inference_mode():
        torch.testing.assert_close(optimized(x), original(x), atol=0, rtol=0)
    assert len(matched) == 1
    assert original.code == code
    assert optimized.weight.data_ptr() == original.weight.data_ptr()


def test_shared_linear_result_is_not_fused():
    assert not rewrite_small_mlp_epilogues(make_graph(multiuse=True), reference_replacement)[1]


def test_approximate_gelu_is_not_reinterpreted():
    assert not rewrite_small_mlp_epilogues(make_graph(approximate="tanh"), reference_replacement)[1]


def test_other_dtype_is_not_fused():
    assert not rewrite_small_mlp_epilogues(make_graph(dtype=torch.bfloat16), reference_replacement)[1]


def test_unqualified_geometry_is_not_fused():
    assert not rewrite_small_mlp_epilogues(make_graph(n=1024), reference_replacement)[1]


def test_nonqualified_weight_layout_is_not_fused():
    assert not rewrite_small_mlp_epilogues(make_graph(transpose=False), reference_replacement)[1]


def test_nonunit_scaling_is_not_dropped():
    assert not rewrite_small_mlp_epilogues(make_graph(alpha=0.5), reference_replacement)[1]


def test_missing_metadata_is_not_guessed():
    assert not rewrite_small_mlp_epilogues(make_graph(metadata=False), reference_replacement)[1]


def test_large_probe_remains_on_original_path():
    assert not eligible_mlp_probe(4, 64)
    assert all(eligible_mlp_probe(b, l) for b, l in [(1, 8), (2, 24), (2, 8), (1, 64)])
    assert not eligible_mlp_probe(0, 8)
