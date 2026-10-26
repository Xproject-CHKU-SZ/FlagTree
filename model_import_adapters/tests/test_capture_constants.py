import sys
from pathlib import Path
import unittest
from unittest import mock

sys.path.insert(0,str(Path(__file__).parents[1]/"src"))
import torch
from torch.fx import Graph,GraphModule
from model_import_adapters.capture_constants import prepare_capture_constants


class CaptureConstantTest(unittest.TestCase):
    def fixture(self,kind="constant",target="cuda:0",vector=False):
        root=torch.nn.Module();value=torch.tensor([127] if vector else 127,dtype=torch.int64)
        if kind=="buffer":root.register_buffer("literal",value)
        elif kind=="parameter":root.register_parameter("literal",torch.nn.Parameter(value,requires_grad=False))
        else:root.literal=value
        graph=Graph();attr=graph.get_attr("literal")
        clone=graph.call_function(torch.ops.aten.clone.default,(attr,))
        convert=graph.call_function(torch.ops.aten._to_copy.default,(clone,),{"device":torch.device(target),"dtype":torch.int64})
        check=graph.call_function(torch.ops.aten._assert_tensor_metadata.default,(clone,None,None,torch.int64),{"device":torch.device("cpu")})
        graph.output(convert)
        module=GraphModule(root,graph)
        if kind=="constant":
            # FX auto-registers root tensor attributes as buffers. Recreate an
            # ExportedProgram lifted plain attribute explicitly for this case.
            delattr(module,"literal");module.literal=value
        return module,convert,clone,check,value

    def relocated_fixture(self):
        module,convert,clone,check,value=self.fixture()
        original=torch.Tensor.to
        def to(tensor,*args,**kwargs):
            return tensor.clone() if args and str(args[0])=="cuda:0" else original(tensor,*args,**kwargs)
        with mock.patch.object(torch.Tensor,"to",to):records=prepare_capture_constants(module)
        return module,convert,clone,check,value,records

    def test_conversion_edge_materialized_original_cpu_check_unchanged(self):
        module,convert,clone,check,value,records=self.relocated_fixture()
        self.assertEqual(len(records),1)
        self.assertIsNot(convert.args[0],clone)
        self.assertEqual(convert.args[0].op,"get_attr")
        self.assertIs(module.literal,value)
        self.assertEqual(check.kwargs['device'],torch.device('cpu'))
        self.assertIs(check.args[0],clone)
        self.assertEqual(module.get_buffer(records[0]['buffer']).item(),127)
        self.assertNotIn(records[0]['buffer'],module.state_dict())

    def test_registered_mutable_state_and_vector_are_not_folded(self):
        for kind in ('buffer','parameter'):
            module,*_=self.fixture(kind=kind)
            self.assertEqual(prepare_capture_constants(module),[])
        module,*_=self.fixture(vector=True)
        self.assertEqual(prepare_capture_constants(module),[])

    def test_cpu_or_other_device_conversion_is_not_retargeted(self):
        for target in ('cpu','cuda:1'):
            module,*_=self.fixture(target=target)
            self.assertEqual(prepare_capture_constants(module),[])
        module,*_=self.fixture()
        with self.assertRaises(ValueError):prepare_capture_constants(module,'cpu')

    def test_preparation_is_idempotent_and_records_source_hash(self):
        module,_,_,_,_,records=self.relocated_fixture()
        self.assertEqual(len(records[0]['source_value_sha256']),64)
        self.assertEqual(prepare_capture_constants(module),[])

    def test_live_input_is_never_precomputed(self):
        graph=Graph();value=graph.placeholder('value')
        converted=graph.call_function(torch.ops.aten._to_copy.default,(value,),{'device':torch.device('cuda:0')})
        graph.output(converted);module=GraphModule({},graph)
        self.assertEqual(prepare_capture_constants(module),[])


if __name__=='__main__':unittest.main()
