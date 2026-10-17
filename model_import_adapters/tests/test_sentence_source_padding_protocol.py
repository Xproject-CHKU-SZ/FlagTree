"""Source encode must receive the same padded token rows as the IR probe."""
import importlib.util
from pathlib import Path
import unittest
from types import SimpleNamespace


class Row(list):
    def tolist(self):
        return list(self)


class TensorRows(list):
    def __init__(self, values):
        super().__init__(Row(row) for row in values)
        self.shape = (len(self), len(self[0]))


class Model:
    prompts = {}
    default_prompt_name = None

    def tokenize(self, texts, **kwargs):
        width = 4 if kwargs.get("padding") == "max_length" else 1
        return {"input_ids": TensorRows([[ord(t[0])] + [0] * (width - 1) for t in texts]),
                "attention_mask": TensorRows([[1] + [0] * (width - 1) for t in texts])}

    def encode(self, texts, **kwargs):
        self.tokenize(list(reversed(texts)))
        return "original_task_output"


class SentenceSourcePaddingProtocolTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path = Path(__file__).resolve().parents[1] / "scripts/run_dynamic_text_pilot.py"
        spec = importlib.util.spec_from_file_location("padding_pilot", path)
        cls.module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(cls.module)

    def test_fixed_padding_and_sorted_rows_preserve_encode_output(self):
        model = Model()
        expected = model.tokenize(["alpha", "beta"], padding="max_length")
        result = self.module.encode_sentence_reference(model, ["alpha", "beta"], device="cuda:0", expected_inputs=expected)
        self.assertEqual(result, "original_task_output")
        self.assertNotIn("tokenize", model.__dict__)
        self.assertEqual(model.tokenize(["alpha"])["input_ids"].shape, (1, 1))

    def test_changed_tokens_are_rejected_and_tokenizer_restored(self):
        model = Model()
        expected = model.tokenize(["alpha", "gamma"], padding="max_length")
        with self.assertRaisesRegex(RuntimeError, "token rows"):
            self.module.encode_sentence_reference(model, ["alpha", "beta"], device="cuda:0", expected_inputs=expected)
        self.assertNotIn("tokenize", model.__dict__)

    def test_shape_drift_is_rejected(self):
        model = Model()
        expected = model.tokenize(["alpha", "beta"])
        with self.assertRaisesRegex(RuntimeError, "Shape"):
            self.module.encode_sentence_reference(model, ["alpha", "beta"], device="cuda:0", expected_inputs=expected)

    def test_restore_instance_tokenizer_after_encode_failure(self):
        model = Model()
        original = model.tokenize
        model.tokenize = original
        def failed_encode(*args, **kwargs):
            raise ValueError("source failure")
        model.encode = failed_encode
        with self.assertRaisesRegex(ValueError, "source failure"):
            self.module.encode_sentence_reference(model, ["alpha"], device="cuda:0", expected_inputs=original(["alpha"], padding="max_length"))
        self.assertIs(model.tokenize, original)

    def test_missing_probe_call_is_rejected(self):
        model = Model()
        model.encode = lambda *args, **kwargs: "no_tokenization"
        with self.assertRaisesRegex(RuntimeError, "exactly one"):
            self.module.encode_sentence_reference(model, ["alpha"], device="cuda:0", expected_inputs=model.tokenize(["alpha"], padding="max_length"))

    def test_prompt_length_tokenization_keeps_original_padding(self):
        model = Model()
        model.prompts = {"query": "query: "}
        model.default_prompt_name = "query"
        expected = model.tokenize(["query: alpha"], padding="max_length")
        def encode(texts, **kwargs):
            prompt_tokens = model.tokenize(["query: "])
            self.assertEqual(prompt_tokens["input_ids"].shape, (1, 1))
            model.tokenize(["query: alpha"])
            return "original_task_output"
        model.encode = encode
        self.assertEqual(self.module.encode_sentence_reference(model, ["alpha"], device="cuda:0", expected_inputs=expected), "original_task_output")

    def test_unused_cache_switch_requires_supported_backbone(self):
        class Inner:
            config = SimpleNamespace(use_cache=True)
            def forward(self, input_ids, use_cache=None):
                pass
        inner = Inner()
        model = SimpleNamespace(_first_module=lambda: SimpleNamespace(auto_model=inner))
        result = self.module.disable_unused_sentence_cache(model)
        self.assertFalse(inner.config.use_cache)
        self.assertEqual(result["task_output"], "sentence_embedding")

    def test_unused_cache_switch_rejects_missing_forward_argument(self):
        class Inner:
            config = SimpleNamespace(use_cache=True)
            def forward(self, input_ids):
                pass
        inner = Inner()
        model = SimpleNamespace(_first_module=lambda: SimpleNamespace(auto_model=inner))
        with self.assertRaisesRegex(RuntimeError, "supported use_cache"):
            self.module.disable_unused_sentence_cache(model)
        self.assertTrue(inner.config.use_cache)


if __name__ == "__main__":
    unittest.main()
