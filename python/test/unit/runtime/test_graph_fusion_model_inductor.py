"""Graph semantics for inference whole-graph exposure, executable without P800."""
import copy
import operator
import unittest

import torch
import torch.nn.functional as F
from torch import fx
from torch.fx.passes.shape_prop import ShapeProp
from triton.experimental.graph_fusion._model_inductor import expose_fp32_patterns, expose_linear, _fp32_reference


def trace(model, args):
    gm = fx.symbolic_trace(model)
    class Values(fx.Interpreter):
        def run_node(self, n):
            out = super().run_node(n)
            if isinstance(out, torch.Tensor):
                n.meta['example_value'] = out
            return out
    Values(gm).run(*args)
    return gm


class WholeGraphTests(unittest.TestCase):
    def test_grouped_projection_complete_outputs_and_versioned_weights(self):
        from triton.experimental.graph_fusion._p800_model_gemm import grouped_projection_candidate, GroupedProjectionPack
        class Model(torch.nn.Module):
            def forward(self, x, w1, w2, w3, b1, b2, b3):
                q=torch.ops.aten.linear.default(x,w1,b1);k=torch.ops.aten.linear.default(x,w2,b2);v=torch.ops.aten.linear.default(x,w3,b3)
                q=q.view(2,7,3,4).transpose(1,2)
                k=k.view(2,7,3,4).transpose(1,2)
                v=v.view(2,7,3,4).transpose(1,2)
                return q.sin()+k.cos(),v.sigmoid(),x
        x=torch.randn(2,7,16)
        params=[torch.nn.Parameter(torch.randn(*shape),requires_grad=False)
                for shape in [(12,16)]*3+[(12,)]*3]
        original=Model();gm=trace(original,(x,*params));before=gm.code
        candidate=grouped_projection_candidate(gm,(x,*params))
        self.assertIsNotNone(candidate)
        body,examples,groups,records=candidate
        packed=GroupedProjectionPack(body.forward,groups)
        for fresh in (x,x+1):
            torch.testing.assert_close(packed(fresh,*params),original(fresh,*params))
        saved={key:value[2] for key,value in packed.entries.items()}
        params[1].add_(.25);params[5].sub_(.5)
        torch.testing.assert_close(packed(x,*params),original(x,*params))
        self.assertTrue(all(value[2] is not saved[key] for key,value in packed.entries.items()))
        self.assertEqual(gm.code,before)
        self.assertEqual(len(records),1)
        self.assertTrue(all(v[2].dtype==torch.float32 for v in packed.entries.values()))

    def test_grouped_projection_preserves_unused_result_mask_mutation(self):
        from triton.experimental.graph_fusion._p800_model_gemm import grouped_projection_candidate, GroupedProjectionPack
        class Model(torch.nn.Module):
            def forward(self, x, w1, w2, w3):
                mask = torch.ones_like(x[:, :, 0])
                mask.masked_fill_(mask > 0, 0)
                q = torch.ops.aten.linear.default(x, w1).view(2, 7, 3, 4).transpose(1, 2)
                k = torch.ops.aten.linear.default(x, w2).view(2, 7, 3, 4).transpose(1, 2)
                v = torch.ops.aten.linear.default(x, w3).view(2, 7, 3, 4).transpose(1, 2)
                return q + k + v + mask[:, None, :, None]
        x = torch.randn(2, 7, 16)
        params = [torch.nn.Parameter(torch.randn(12, 16), requires_grad=False) for _ in range(3)]
        model = Model()
        graph, examples, groups, records = grouped_projection_candidate(trace(model, (x, *params)), (x, *params))
        self.assertTrue(any(n.op == 'call_method' and n.target == 'masked_fill_' for n in graph.graph.nodes))
        torch.testing.assert_close(GroupedProjectionPack(graph.forward, groups)(x, *params), model(x, *params))

    def test_grouped_projection_keeps_shared_weights_and_public_layout(self):
        from triton.experimental.graph_fusion._p800_model_gemm import grouped_projection_candidate
        class Model(torch.nn.Module):
            def forward(self,x,w1,w2):return torch.ops.aten.linear.default(x,w1),torch.ops.aten.linear.default(x,w2)
        x=torch.randn(3,16);w1=torch.nn.Parameter(torch.randn(12,16),requires_grad=False)
        w2=torch.nn.Parameter(torch.randn(12,16),requires_grad=False)
        gm=trace(Model(),(x,w1,w2))
        self.assertIsNone(grouped_projection_candidate(gm,(x,w1,w2)))
        class Shared(torch.nn.Module):
            def forward(self,x,w1,w2):return torch.ops.aten.linear.default(x,w1).sin()+torch.ops.aten.linear.default(x,w1).cos()+w2.sum()
        gm=trace(Shared(),(x,w1,w2))
        self.assertIsNone(grouped_projection_candidate(gm,(x,w1,w2)))

    def test_split_addmm_restores_lowering_and_preserves_other_semantics(self):
        from types import SimpleNamespace
        from unittest.mock import patch
        from torch._inductor.lowering import lowerings
        from torch._inductor.kernel import mm as _mm_registration
        from triton.experimental.graph_fusion._p800_model_schedule import _split_fp32_addmm
        op=torch.ops.aten.addmm.default;mm=torch.ops.aten.mm.default;add=torch.ops.aten.add.Tensor
        fp32=SimpleNamespace(get_dtype=lambda:torch.float32)
        half=SimpleNamespace(get_dtype=lambda:torch.float16)
        original=lambda *a,**kw:('original',kw)
        def native_add(target, **kwargs):
            self.assertIs(target, add)
            self.assertFalse(kwargs['add_to_fallback_set'])
            return lambda a,b:('sum',a,b)
        with patch.dict(lowerings,{op:original,mm:lambda *a:'product'}), \
                patch('torch._inductor.lowering.fallback_handler',side_effect=native_add):
            with self.assertRaisesRegex(RuntimeError,'restore'):
                with _split_fp32_addmm(True):
                    self.assertEqual(lowerings[op](fp32,fp32,fp32),('sum','product',fp32))
                    for args,kwargs in [((half,half,half),{}),((fp32,fp32,fp32),{'beta':0}),
                                        ((fp32,fp32,fp32),{'alpha':.5})]:
                        self.assertEqual(lowerings[op](*args,**kwargs)[0],'original')
                    raise RuntimeError('restore')
            self.assertIs(lowerings[op],original)

    def test_packed_contraction_preserves_bias_outputs_and_fresh_inputs(self):
        from triton.experimental.graph_fusion._p800_model_gemm import packed_weight_candidate, pack_column_major
        class Model(torch.nn.Module):
            def forward(self, x, w, b):
                y = torch.ops.aten.linear.default(x, w, b)
                return y, y.sigmoid(), x
        x = torch.randn(8,512,512)
        w = torch.nn.Parameter(torch.randn(128,512),requires_grad=False)
        b = torch.randn(128)
        gm = trace(Model(), (x,w,b))
        candidate=packed_weight_candidate(gm,(x,w,b))
        self.assertIsNotNone(candidate)
        gm,examples,indices,records=candidate
        self.assertEqual(indices,[1]);self.assertEqual(len(records),1)
        self.assertEqual(examples[1].stride(),(1,128))
        for args in ((x,w,b),(x+1,w*.5,b-2)):
            packed=(args[0],pack_column_major(args[1]),args[2])
            torch.testing.assert_close(gm(*packed),Model()(*args),atol=1e-4,rtol=1e-4)
            self.assertEqual(gm(*args)[2].data_ptr(),args[0].data_ptr())
            self.assertTrue(gm(*args)[0].is_contiguous())
            self.assertEqual(gm(*args)[0].view(-1).numel(),8*512*128)

    def test_backend_retune_requires_forwarding_proof(self):
        from types import SimpleNamespace
        from triton.experimental.graph_fusion._p800_model_schedule import _validate_buffer_option
        for actual in (16,512,1024,2048):
            binary=SimpleNamespace(metadata=SimpleNamespace(buffer_size_limit=actual))
            with self.assertRaisesRegex(RuntimeError,'not applied'):
                _validate_buffer_option(binary,2048,[])
            result=_validate_buffer_option(binary,2048,[binary])
            self.assertEqual(result['actual'],actual)
            self.assertEqual(result['retuned'],actual!=2048)
            self.assertEqual(_validate_buffer_option(binary,2048,[]),result)
        for actual in (None,0,8,1000,4096,True):
            binary=SimpleNamespace(metadata=SimpleNamespace(buffer_size_limit=actual))
            with self.assertRaisesRegex(RuntimeError,'retuned legally'):
                _validate_buffer_option(binary,2048,[binary])

    def test_packed_contraction_keeps_other_dtypes_and_small_shapes(self):
        from triton.experimental.graph_fusion._p800_model_gemm import packed_weight_candidate
        class Model(torch.nn.Module):
            def forward(self, x, w):return torch.ops.aten.linear.default(x,w)
        for dtype in (torch.float16,torch.bfloat16,torch.float32):
            x=torch.randn(32,64).to(dtype);w=torch.randn(16,64).to(dtype)
            gm=trace(Model(),(x,w));before=gm.code
            self.assertIsNone(packed_weight_candidate(gm,(x,w)))
            self.assertEqual(gm.code,before)

    def test_weight_layout_cache_invalidates_without_caching_activations(self):
        from triton.experimental.graph_fusion._model_inductor import _ParameterPack
        from triton.experimental.graph_fusion._p800_model_gemm import pack_column_major
        x=torch.randn(3,8);w=torch.nn.Parameter(torch.randn(16,8),requires_grad=False)
        pack=_ParameterPack(lambda a,b:a@b.t(),[1],transform=pack_column_major)
        torch.testing.assert_close(pack(x,w),x@w.t())
        saved=pack.entries[1][2]
        self.assertEqual(saved.stride(),(1,16));self.assertEqual(saved.dtype,torch.float32)
        torch.testing.assert_close(saved,w,atol=0,rtol=0)
        torch.testing.assert_close(pack(x+1,w),(x+1)@w.t())
        self.assertIs(pack.entries[1][2],saved)
        w.copy_(w+2)
        torch.testing.assert_close(pack(x,w),x@w.t())
        self.assertIsNot(pack.entries[1][2],saved)

    def test_aot_boxed_return_and_fx_tuple_match(self):
        from triton.experimental.graph_fusion._model_inductor import _compare
        x=torch.randn(4)
        _compare([x], (x,), dict(atol=0,rtol=0))
        with self.assertRaises(AssertionError):
            _compare([x,x], (x,), dict(atol=0,rtol=0))

    def test_dual_output_broadcast_fp32_internal_and_final_dtype(self):
        class Model(torch.nn.Module):
            def forward(self,a,b):
                z=a+b
                return F.layer_norm(z,(64,)),z
        for dtype in (torch.float32,torch.float16,torch.bfloat16):
            args=(torch.randn(2,3,64).to(dtype),torch.randn(1,3,64).to(dtype))
            gm=trace(Model(),args)
            records=expose_fp32_patterns(gm)
            self.assertEqual(records[0]['outputs'],2)
            self.assertTrue(records[0]['broadcast'])
            out,residual=gm(*args)
            total=args[0].float()+args[1].float()
            torch.testing.assert_close(residual,total.to(dtype),atol=0,rtol=0)
            torch.testing.assert_close(out,F.layer_norm(total,(64,)).to(dtype),atol=0,rtol=0)
            self.assertEqual(out.dtype,dtype)

    def test_quick_gelu_does_not_narrow_intermediates(self):
        class Model(torch.nn.Module):
            def forward(self,x):return x*torch.sigmoid(1.702*x)
        for dtype in (torch.float32,torch.float16,torch.bfloat16):
            x=torch.linspace(-9,9,1024).to(dtype)
            gm=trace(Model(),(x,));records=expose_fp32_patterns(gm)
            self.assertEqual(len(records),1)
            expected=(x.float()*torch.sigmoid(1.702*x.float())).to(dtype)
            torch.testing.assert_close(gm(x),expected,atol=0,rtol=0)

    def test_mutation_order_unchanged(self):
        class Model(torch.nn.Module):
            def forward(self,a,b):
                z=a+b
                a.mul_(2)
                return F.layer_norm(z,(64,)),a
        args=(torch.randn(2,64).half(),torch.randn(2,64).half())
        gm=trace(Model(),tuple(x.clone() for x in args));before=gm.code
        self.assertEqual(expose_fp32_patterns(gm),[])
        self.assertEqual(gm.code,before)

    def test_other_sigmoid_constants_are_not_quick_gelu(self):
        class Model(torch.nn.Module):
            def forward(self,x):return x*torch.sigmoid(1.7*x)
        gm=trace(Model(),(torch.randn(4).half(),));before=gm.code
        self.assertEqual(expose_fp32_patterns(gm),[]);self.assertEqual(gm.code,before)

    def test_quick_gelu_preserves_inner_output_writes(self):
        class ScaleOutput(torch.nn.Module):
            def forward(self, x, out):
                return x * torch.sigmoid(torch.mul(x, 1.702, out=out)), out

        class SigmoidOutput(torch.nn.Module):
            def forward(self, x, out):
                return x * torch.sigmoid(1.702 * x, out=out), out

        for model in (ScaleOutput(), SigmoidOutput()):
            for dtype in (torch.float32, torch.float16, torch.bfloat16):
                for aliases_input in (False, True):
                    with self.subTest(model=type(model).__name__, dtype=dtype, aliases_input=aliases_input):
                        x = torch.linspace(-9, 9, 128).to(dtype)
                        out = x if aliases_input else torch.full_like(x, -123)
                        gm = trace(model, (x.clone(), out.clone()))
                        expose_fp32_patterns(gm)
                        ref_x = x.clone()
                        ref_out = ref_x if aliases_input else out.clone()
                        expected = model(ref_x, ref_out)
                        actual = gm(x, out)
                        for got, want in zip(actual, expected):
                            torch.testing.assert_close(got, want, atol=0, rtol=0)
                        torch.testing.assert_close(out, ref_out, atol=0, rtol=0)
                        torch.testing.assert_close(x, ref_x, atol=0, rtol=0)
                        self.assertEqual(actual[1].data_ptr(), out.data_ptr())

    def test_parameter_pack_invalidates_and_never_caches_input(self):
        from triton.experimental.graph_fusion._model_inductor import _ParameterPack
        w=torch.nn.Parameter(torch.randn(8).half(),requires_grad=False)
        pack=_ParameterPack(lambda x,p:x.float()+p,[1])
        x=torch.randn(8).half()
        torch.testing.assert_close(pack(x,w),x.float()+w.float(),atol=0,rtol=0)
        saved=pack.entries[1][2]
        pack(x+1,w);self.assertIs(pack.entries[1][2],saved)
        w.copy_(w+2)
        torch.testing.assert_close(pack(x,w),x.float()+w.float(),atol=0,rtol=0)
        self.assertIsNot(pack.entries[1][2],saved)
        w.data=torch.randn_like(w)
        torch.testing.assert_close(pack(x*2,w),x.float()*2+w.float(),atol=0,rtol=0)
        other=torch.nn.Parameter(torch.randn_like(w),requires_grad=False)
        torch.testing.assert_close(pack(x,other),x.float()+other.float(),atol=0,rtol=0)

    def test_whole_graph_fp32_candidate_preserves_final_dtype(self):
        from triton.experimental.graph_fusion._model_inductor import promote_whole_graph
        class Model(torch.nn.Module):
            def forward(self,a,b):return (a+b).sigmoid(),a+b
        a=torch.randn(2,8).half();b=torch.randn(2,8).half()
        gm=trace(Model(),(a,b));promote_whole_graph(gm)
        actual=gm(a,b)
        for value,want in zip(actual,((a.float()+b.float()).sigmoid(),a.float()+b.float())):
            self.assertEqual(value.dtype,torch.float16)
            torch.testing.assert_close(value,want.half(),atol=0,rtol=0)

    def test_fp32_reference_promotes_explicit_dtype(self):
        class Model(torch.nn.Module):
            def forward(self,a):return (a.to(torch.float16)*1.702).sigmoid()
        x=torch.randn(512).half();gm=trace(Model(),(x,))
        reference=_fp32_reference(gm)
        torch.testing.assert_close(reference(x),(x.float()*1.702).sigmoid(),atol=0,rtol=0)

    def test_promoted_pool_projection_survives_region_pass(self):
        from triton.experimental.graph_fusion._model_inductor import promote_whole_graph, refresh_graph_metadata
        from triton.experimental.graph_fusion._p800_fp32_region import rewrite
        from torch.fx.passes.fake_tensor_prop import FakeTensorProp
        from torch._subclasses.fake_tensor import FakeTensorMode
        class Model(torch.nn.Module):
            def forward(self,x,mask,weight):
                pooled=(x*mask).sum(1)/mask.sum(1)
                return torch.ops.aten.linear.default(torch.cat([pooled],1),weight,None)
        for dtype in (torch.float16,torch.bfloat16):
            args=(torch.randn(2,5,8).to(dtype),torch.ones(2,5,1).to(dtype),torch.randn(8,8).to(dtype))
            gm=fx.symbolic_trace(Model())
            FakeTensorProp(gm,mode=FakeTensorMode(allow_non_fake_inputs=True)).propagate(*args)
            for node in gm.graph.nodes:
                if 'val' in node.meta:node.meta['example_value']=node.meta['val']
            with torch.no_grad():
                promote_whole_graph(gm,args)
                # This used to insert an FP16/BF16 cast before the FP32 weight.
                self.assertFalse(rewrite(gm.graph,native=True))
                actual=gm(*args)
                expected=Model()(*(x.float() for x in args)).to(dtype)
                torch.testing.assert_close(actual,expected,atol=0,rtol=0)
                # Packed parameters change placeholder metadata as well.
                packed=(args[0],args[1],args[2].float())
                refresh_graph_metadata(gm,packed)
                self.assertFalse(rewrite(gm.graph,native=True))
                torch.testing.assert_close(gm(*packed),expected,atol=0,rtol=0)
                changed=(args[0]+1,args[1],args[2]*2)
                torch.testing.assert_close(gm(*changed),Model()(*(x.float() for x in changed)).to(dtype),atol=0,rtol=0)

    def test_metadata_refresh_does_not_mutate_real_inputs_or_parameters(self):
        from triton.experimental.graph_fusion._model_inductor import refresh_graph_metadata
        class Model(torch.nn.Module):
            def __init__(self):
                super().__init__();self.register_buffer('offset',torch.ones(8))
            def forward(self,x):
                x.add_(self.offset)
                return x,x.shape[0]
        gm=fx.symbolic_trace(Model());x=torch.zeros(2,8);saved=x.clone()
        refresh_graph_metadata(gm,(x,))
        torch.testing.assert_close(x,saved,atol=0,rtol=0)
        torch.testing.assert_close(gm.offset,torch.ones(8),atol=0,rtol=0)

    def test_vendor_short_rows_and_transpose_preserve_masks_and_values(self):
        from triton.experimental.graph_fusion._p800_model_schedule import preserve_short_softmax, preserve_block_transpose
        class Model(torch.nn.Module):
            def forward(self,x):
                return F.softmax(x,dim=-1),x.transpose(1,2).contiguous()
        for n in (3,45,77,128):
            x=torch.randn(2,7,n)
            x[0,0,:]=float('-inf')
            x[0,1,0]=float('inf')
            x[0,2,-1]=float('nan')
            gm=trace(Model(),(x,))
            self.assertEqual(len(preserve_short_softmax(gm)),1)
            self.assertEqual(len(preserve_block_transpose(gm)),1)
            actual=gm(x)
            expected=Model()(x)
            torch.testing.assert_close(actual,expected,atol=0,rtol=0,equal_nan=True)
            self.assertTrue(actual[1].is_contiguous())
            self.assertNotEqual(actual[1].data_ptr(),x.data_ptr())
        class Other(torch.nn.Module):
            def forward(self,x):
                return F.softmax(x,dim=1,dtype=torch.float64)
        gm=trace(Other(),(torch.randn(2,3,45),))
        self.assertFalse(preserve_short_softmax(gm))

    def test_lm_options_are_explicit_scoped_and_only_apply_to_fp32_pointwise(self):
        from types import SimpleNamespace
        from unittest.mock import patch
        from torch._inductor.codegen.triton import TritonKernel
        from torch._inductor.virtualized import V
        from triton.experimental.graph_fusion._p800_model_schedule import p800_lm_schedule
        original = V.choices
        with patch.object(TritonKernel,'codegen_body',return_value=None) as body:
            with self.assertRaisesRegex(RuntimeError,'restore'):
                with p800_lm_schedule(buffer_bytes=2048):
                    for signature, fixed, expected in [({'a':'*fp32','b':'*fp32'},True,2048),
                                                      ({'a':'*fp32','b':'*i64'},True,None),
                                                      ({'a':'*fp32','b':'*fp16'},True,None),
                                                      ({'a':'*fp32'},False,None)]:
                        kernel=SimpleNamespace(triton_meta={'signature':signature},fixed_config=fixed)
                        TritonKernel.codegen_body(kernel)
                        self.assertEqual(kernel.triton_meta.get('buffer_size_limit'),expected)
                    raise RuntimeError('restore')
            self.assertIs(TritonKernel.codegen_body,body)
        self.assertIs(V.choices,original)

    def test_short_softmax_preserves_explicit_output_and_aliases(self):
        from triton.experimental.graph_fusion._p800_model_schedule import preserve_short_softmax

        class Model(torch.nn.Module):
            def forward(self, x, out):
                value = torch.softmax(x, dim=-1, out=out)
                return value, out

        for width in (3, 45, 77, 128):
            x = torch.randn(2, 7, width)
            out = torch.full_like(x, -12345.)
            gm = trace(Model(), (x, out))
            preserve_short_softmax(gm)
            out.fill_(-12345.)
            value, alias = gm(x, out)
            torch.testing.assert_close(out, torch.softmax(x, dim=-1), atol=0, rtol=0)
            self.assertEqual(value.data_ptr(), out.data_ptr())
            self.assertEqual(alias.data_ptr(), out.data_ptr())

    def test_backend_buffer_option_survives_whitelist_and_restores_after_error(self):
        import triton
        from types import SimpleNamespace
        from unittest.mock import patch
        from triton.experimental.graph_fusion._p800_model_schedule import _compile_buffer_option
        fn=object()
        with patch.object(triton,'compile',side_effect=lambda source,**kwargs:kwargs) as original:
            with self.assertRaisesRegex(RuntimeError,'restore'):
                with _compile_buffer_option(fn,2048):
                    actual=triton.compile(SimpleNamespace(fn=fn),options={'debug':True})
                    self.assertEqual(actual['options'],{'debug':True,'buffer_size_limit':2048})
                    other=triton.compile(SimpleNamespace(fn=object()),options={'debug':True})
                    self.assertEqual(other['options'],{'debug':True})
                    raise RuntimeError('restore')
            self.assertIs(triton.compile,original)

    def test_pointwise_workaround_does_not_disable_reduction_choices(self):
        from types import SimpleNamespace
        from unittest.mock import patch
        from torch._inductor import config
        from torch._inductor.codegen.triton import TritonKernel
        from triton.experimental.graph_fusion._p800_model_schedule import p800_lm_schedule
        with config.patch({'triton.autotune_pointwise': False}):
            with patch.object(TritonKernel,'codegen_kernel',lambda *a,**k: str(config.triton.autotune_pointwise)):
                with p800_lm_schedule():
                    for reduction in (False,True):
                        k=SimpleNamespace(inside_reduction=reduction,triton_meta={})
                        self.assertEqual(TritonKernel.codegen_kernel(k),str(reduction))
                        self.assertFalse(config.triton.autotune_pointwise)

    def test_vendor_norm_remains_eligible_for_fast_schedules_without_aliases(self):
        from triton.experimental.graph_fusion._p800_model_schedule import schedule_variants
        from triton.experimental.graph_fusion._p800_model_layernorm import preserve_unmatched_norms
        class Model(torch.nn.Module):
            def forward(self, x):
                y = F.layer_norm(x, (8,))
                return y * torch.sigmoid(1.702 * y)
        x = torch.randn(2, 8)
        fused = trace(Model(), (x,))
        vendor = copy.deepcopy(fused)
        self.assertEqual(preserve_unmatched_norms(vendor), 1)
        originals = (fused.code, vendor.code)
        variants = schedule_variants([('inductor_p800_lm', fused, []),
            ('inductor_p800_lm_sdk_norm', vendor, []), ('duplicate', copy.deepcopy(vendor), [])])
        self.assertEqual([x[0] for x in variants], ['inductor_p800_lm', 'inductor_p800_lm2048',
            'inductor_p800_lm_sdk_norm', 'inductor_p800_lm_sdk_norm2048'])
        for name, gm, regions in variants:
            torch.testing.assert_close(gm(x), Model()(x), atol=0, rtol=0)
            targets = [n.target for n in gm.graph.nodes if n.op == 'call_function']
            self.assertEqual(torch.ops.flagtree_p800.vendor_layernorm.default in targets, 'sdk_norm' in name)
        self.assertEqual((fused.code, vendor.code), originals)

    def test_final_conversion_keeps_dtype_layout_and_fresh_storage(self):
        from triton.experimental.graph_fusion._p800_model_layernorm import _final_cast
        x=torch.randn(7,13).t()
        x[0,0]=float('inf');x[1,0]=float('nan')
        for dtype in (torch.float16,torch.bfloat16):
            result=_final_cast(x,dtype)
            expected=x.to(dtype=dtype,copy=True)
            self.assertEqual(result.dtype,dtype)
            self.assertEqual(result.stride(),expected.stride())
            self.assertNotEqual(result.data_ptr(),x.data_ptr())
            torch.testing.assert_close(result,expected,atol=0,rtol=0,equal_nan=True)


if __name__=='__main__':unittest.main()
