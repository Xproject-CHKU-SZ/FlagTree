"""Metadata-only task checks; no model or CPU reference is executed."""
import importlib.util
from pathlib import Path
import unittest


class TaskSelectionTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        path = Path(__file__).parents[1] / "scripts/run_dynamic_text_pilot.py"
        spec = importlib.util.spec_from_file_location("task_pilot", path)
        cls.module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(cls.module)

    def test_saved_classifier_head_selects_logits(self):
        self.assertEqual(self.module.select_transformer_task(
            {"architectures": ["BertForSequenceClassification"]}, "fixture/ranker"),
            "sequence_classification_logits")

    def test_reranker_name_does_not_create_a_classifier_head(self):
        with self.assertRaisesRegex(RuntimeError, "no classification head"):
            self.module.select_transformer_task({"architectures": ["BertModel"]}, "fixture/reranker")

    def test_saved_encoder_retains_token_output(self):
        self.assertEqual(self.module.select_transformer_task(
            {"architectures": ["BertModel"]}, "fixture/encoder"),
            "token_encoder_last_hidden_state")

    def test_causal_reranker_requires_its_original_scoring_protocol(self):
        for arch in ("GemmaForCausalLM", "Qwen2ForCausalLM"):
            with self.subTest(arch=arch), self.assertRaisesRegex(RuntimeError, "Task protocol required"):
                self.module.select_transformer_task({"architectures": [arch]}, "fixture/reranker")

    def test_generative_model_does_not_silently_become_an_encoder(self):
        with self.assertRaisesRegex(RuntimeError, "scoring/generation output"):
            self.module.select_transformer_task({"architectures": ["Qwen3ForCausalLM"]}, "fixture/recommendation")

    def test_custom_projection_is_not_replaced_by_hidden_states(self):
        for arch in ("HF_ColBERT", "RobertaForCL"):
            with self.subTest(arch=arch), self.assertRaisesRegex(RuntimeError, "saved projection"):
                self.module.select_transformer_task({"architectures": [arch]}, "fixture/retriever")


if __name__ == "__main__":
    unittest.main()
