from argparse import Namespace
import contextlib
import copy
import io
from pathlib import Path
import sys
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).parents[1] / "scripts"))
import continue_shape301_wave as entry
import shape301_discovery_chain as chain


class DiscoveryChainTest(unittest.TestCase):
    def fixture(self):
        accepted = [{"model_id": f"fixture/{i}", "revision": "a" * 40, "task": "sequence_classification_logits",
                     "status": "passed", "parameter_dtype": "FP32", "device": "PPU-ZW810E", "shape_count": 5} for i in range(301)]
        models = [{key: row[key] for key in ("model_id", "revision", "task")} for row in accepted]
        plan = {"scope_sha256": "scope", "waves": [{"new_model_ids": [row["model_id"] for row in models]}]}
        return accepted, models, plan

    def test_fixed_original_prefixes_end301_and_w5_is25_plus26(self):
        accepted, models, plan = self.fixture()
        prefixes = chain.planned_prefixes(accepted, models, plan, "scope", models[:100])
        self.assertEqual([len(x) for x in prefixes], [150, 200, 250, 275, 301])
        self.assertEqual([len(b)-len(a) for a,b in zip([models[:100]]+prefixes,prefixes)], [50, 50, 50, 25, 26])
        self.assertEqual(prefixes[-1], models)

    def test_scope_order_duplicates_revision_and_task_cannot_drift(self):
        accepted, models, plan = self.fixture()
        bads = [models[:-1], models[::-1], models[:-1]+[models[0]]]
        for key in ("revision", "task"):
            bad = copy.deepcopy(models); bad[100][key] = "drift"; bads.append(bad)
        for bad in bads:
            with self.assertRaises(ValueError): chain.planned_prefixes(accepted, bad, plan, "scope", models[:100])
        with self.assertRaises(ValueError): chain.planned_prefixes(accepted, models, plan, "wrong", models[:100])

    def test_first100_are_the_existing_queue_not_replacements(self):
        accepted, models, plan = self.fixture()
        for previous in (models[:99], models[1:101], models[:100][::-1]):
            with self.assertRaises(ValueError): chain.planned_prefixes(accepted, models, plan, "scope", previous)

    def owner(self):
        args=Namespace(accepted=Path("accepted"),source=Path("source35"),wave_plan=Path("plan"),previous_controller=Path("gate100/progress.json"))
        command=chain.next_command("python",args.source,args.accepted,Path("models100"),args.wave_plan,Path("previous/progress.json"),Path("wave100"),args.previous_controller.parent)
        return args, command

    def test_existing_controller_ownership_and_runtime_are_explicit(self):
        args, command = self.owner()
        self.assertEqual(chain.validate_owner(command,args),Path("models100"))
        for flag in ("--accepted","--source","--wave-plan","--controller-output"):
            bad=command.copy();bad[bad.index(flag)+1]="other"
            with self.assertRaises(ValueError):chain.validate_owner(bad,args)

    def test_only_terminal_controller_with_actual_child_wait_zero_passes(self):
        args, command = self.owner()
        child=["python","runner.py","--accepted","accepted","--source","source35","--output","wave100"]
        report={"status":"completed","child_exit_code":0,"child_pid":123,"command":child}
        chain.validate_terminal_controller(report,command)
        for key,value in (("status","running"),("status","needs_attention"),("child_exit_code",1),("child_exit_code",None),("child_pid",None)):
            with self.assertRaises(ValueError):chain.validate_terminal_controller({**report,key:value},command)

    def test_wrong_child_output_cannot_authorize_later_wave(self):
        _,command=self.owner()
        report={"status":"completed","child_exit_code":0,"child_pid":123,
                "command":["python","runner.py","--accepted","accepted","--source","source35","--output","other-wave"]}
        with self.assertRaises(ValueError):chain.validate_terminal_controller(report,command)

    def test_next_command_reuses_frozen_controller_and_previous_progress(self):
        command=chain.next_command("python",Path("frozen35"),Path("accepted"),Path("models150"),Path("plan"),Path("gate100/progress.json"),Path("wave150"),Path("gate150"))
        self.assertEqual(command[1],str(Path("frozen35/model_import_adapters/scripts/continue_shape301_wave.py")))
        self.assertEqual(command[command.index("--previous-controller")+1],str(Path("gate100/progress.json")))
        self.assertNotIn("--chain-after",command)

    def test_new_entry_dispatches_before_original_single_wave_creation(self):
        argv=["continue.py","--chain-after","existing-job"]
        for key in ("accepted","models","source","wave-plan","previous-controller","output","controller-output"):
            argv += ["--"+key,key]
        with mock.patch.object(sys,"argv",argv),mock.patch.object(chain,"run_chain",return_value=0) as execute, \
             mock.patch.object(Path,"mkdir",side_effect=AssertionError("dispatch must not create the original single-wave output")),contextlib.redirect_stdout(io.StringIO()):
            self.assertEqual(entry.main(),0);execute.assert_called_once()


if __name__ == "__main__":
    unittest.main()
