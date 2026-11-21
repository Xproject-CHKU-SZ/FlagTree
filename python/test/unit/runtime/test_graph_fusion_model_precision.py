"""Complete public outputs must pass the same gate as graph outputs."""
import unittest
import torch
from triton.experimental.graph_fusion._model_precision import compare_model_outputs
from triton.experimental.graph_fusion._model_inductor import _compare


class ModelPrecisionTests(unittest.TestCase):
    def test_registered_model_output_without_keyed_flattener(self):
        # Match Transformers ModelOutput registration without requiring it as
        # a test dependency. Ordinary PyTree structure remains authoritative.
        from torch.utils._pytree import register_pytree_node, tree_map
        class Output(dict):
            pass
        register_pytree_node(Output, lambda x:(list(x.values()),list(x.keys())),
                            lambda values,keys:Output(zip(keys,values)))
        ref=Output(embeds=torch.ones(2,8),tower=Output(hidden=torch.ones(2,5,8)))
        actual=tree_map(lambda x:x.half(),ref)
        rows=[]
        compare_model_outputs(actual,ref,dict(atol=0,rtol=0),output_template=actual,records=rows)
        self.assertEqual([x['path'] for x in rows],
                         ["output['embeds']","output['tower']['hidden']"])
        actual['tower']['hidden'][0,0,0]+=1
        with self.assertRaisesRegex(AssertionError,'hidden'):
            compare_model_outputs(actual,ref,dict(atol=0,rtol=0),output_template=actual)

    def test_good_embeddings_do_not_hide_bad_logits_or_hidden_states(self):
        reference=dict(embeds=torch.ones(2,8),logits=torch.ones(2,2),
                       tower=dict(hidden=torch.ones(2,5,8)))
        template=torch.utils._pytree.tree_map(lambda x:x.half(),reference)
        actual=torch.utils._pytree.tree_map(lambda x:x.clone(),template)
        actual['logits'][0,0]+=1;actual['tower']['hidden'][0,0,0]+=1
        rows=[]
        with self.assertRaisesRegex(AssertionError,'logits.*hidden'):
            compare_model_outputs(actual,reference,dict(atol=.003,rtol=.003),output_template=template,records=rows)
        self.assertEqual([row['passed'] for row in rows],[True,False,False])
        with self.assertRaises(AssertionError):_compare(actual,reference,dict(atol=.003,rtol=.003))

    def test_final_cast_and_nonfinite_semantics_shared(self):
        for dtype in (torch.float16,torch.bfloat16):
            reference=dict(values=torch.tensor([1.003,0.0001,float('nan'),float('inf'),-float('inf')]),indices=torch.tensor([1,2]))
            actual=dict(values=reference['values'].to(dtype),indices=reference['indices'].clone())
            compare_model_outputs(actual,reference,dict(atol=0,rtol=0),output_template=actual)
            _compare(actual,reference,dict(atol=0,rtol=0))
            actual['indices'][0]=3
            with self.assertRaises(AssertionError):compare_model_outputs(actual,reference,dict(atol=0,rtol=0))

    def test_public_structure_and_dtype_remain_strict(self):
        reference={'x':torch.ones(4)};template={'x':torch.ones(4).half()}
        with self.assertRaisesRegex(AssertionError,'dtype'):
            compare_model_outputs(reference,reference,dict(atol=0,rtol=0),output_template=template)
        with self.assertRaisesRegex(AssertionError,'structure'):
            compare_model_outputs([reference],(reference,),dict(atol=0,rtol=0))
        _compare([reference],(reference,),dict(atol=0,rtol=0))

    def test_sparse_outputs_and_scalar_values_are_checked(self):
        ref={'x':torch.eye(3).to_sparse(),'count':3}
        compare_model_outputs(ref,ref,dict(atol=0,rtol=0),output_template=ref)
        with self.assertRaisesRegex(AssertionError,'non-tensor'):
            compare_model_outputs(dict(ref,count=4),ref,dict(atol=0,rtol=0))


if __name__=='__main__':unittest.main()
