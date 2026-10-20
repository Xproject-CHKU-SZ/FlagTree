"""Scope and immutable replay contracts do not require an accelerator."""
import importlib.util
from pathlib import Path
import unittest


SCRIPT = Path(__file__).parents[1] / "scripts/run_scene_optimization_campaign.py"


def load_runner():
    spec = importlib.util.spec_from_file_location("scene_campaign", SCRIPT)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def record(name="org/model"):
    return dict(model_id=name, revision="a" * 40, status="passed",
                parameter_dtype="FP32", device="PPU-ZW810E", shape_count=5,
                case="/workspace/old/case", task="sentence_embedding_full_pipeline",
                command={"reproduce": ["python", "/old/run_dynamic_text_pilot.py",
                         "--model-id", name, "--output", "/old/out", "--repo-root", "/old/src",
                         "--disable-inductor-pattern-matcher", "--task-protocol", "auto"]})


class CampaignContracts(unittest.TestCase):
    def test_scope_identity(self):
        runner = load_runner()
        self.assertEqual(runner.validate_scope([record()], expected_count=1), [record()])

    def test_duplicate_models_rejected(self):
        with self.assertRaises(ValueError):
            load_runner().validate_scope([record(), record()], expected_count=2)

    def test_nonaccepted_or_wrong_shape_rejected(self):
        for key, value in [("status", "failed"), ("parameter_dtype", "BF16"),
                           ("shape_count", 4), ("device", "cpu"), ("revision", "main")]:
            item = record(); item[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                load_runner().validate_scope([item], expected_count=1)

    def test_count_must_match(self):
        with self.assertRaises(ValueError):
            load_runner().validate_scope([record()])

    def test_replay_preserves_compatibility_and_pins_revision(self):
        cmd = load_runner().replay_command(record(), Path("/new/src"), Path("/new/out"), "python3")
        self.assertEqual(cmd[:2], ["python3", str(Path("/new/src/model_import_adapters/scripts/run_dynamic_text_pilot.py"))])
        self.assertIn("--disable-inductor-pattern-matcher", cmd)
        self.assertEqual(cmd[cmd.index("--revision") + 1], "a" * 40)
        self.assertEqual(cmd[cmd.index("--output") + 1], str(Path("/new/out")))

    def test_replay_rejects_revision_or_model_drift(self):
        for flag, value in [("--revision", "b" * 40), ("--model-id", "other/model")]:
            item = record()
            if flag in item["command"]["reproduce"]:
                cmd = item["command"]["reproduce"]; cmd[cmd.index(flag)+1] = value
            else:
                item["command"]["reproduce"].extend([flag, value])
            with self.assertRaises(ValueError):
                load_runner().replay_command(item, Path("/new"), Path("/out"), "python")

    def test_slug_collision_avoided(self):
        runner = load_runner()
        self.assertNotEqual(runner.model_slug("a/b_c"), runner.model_slug("a_b/c"))
        self.assertNotIn("/", runner.model_slug("../../a"))

    def test_protocol_detects_output_and_compile_policy_drift(self):
        runner = load_runner()
        old = {"task": "embedding", "dtype": "float32", "probes": runner.PROBES,
               "texts": ["test"], "compile_options": {"pattern_matcher": False}}
        self.assertEqual(runner.protocol_errors(old, dict(old)), [])
        new = dict(old, compile_options={})
        self.assertIn("protocol:compile_options", runner.protocol_errors(old, new))


if __name__ == "__main__":
    unittest.main()
