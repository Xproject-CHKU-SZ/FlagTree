import json
from pathlib import Path
import sys
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import patch

sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
import run_exact_replay_pair as runner


class PairRunnerTest(unittest.TestCase):
    def exercise(self, mode, policy=False):
        with tempfile.TemporaryDirectory() as temporary:
            root=Path(temporary);output=root/"run";seen=[]
            def popen(command, **kwargs):
                phase=command[command.index("--phase")+1];seen.append(phase)
                if policy:
                    self.assertEqual(command[command.index('--replay-policy')+1],str(root/'policy.json'))
                destination=Path(command[command.index("--output")+1]);destination.mkdir()
                if mode != "missing_report":
                    status="unstable_baseline" if mode=="unstable" else "calibrated" if phase=="calibrate" else "measured"
                    (destination/"report.json").write_text(json.dumps({"status":status}))
                kwargs["stdout"].write(b"synthetic child log\n")
                return SimpleNamespace(pid=123,wait=lambda:1 if mode=="unstable" else 0)
            argv=["runner","--source",str(root),"--case",str(root/"case"),"--output",str(output)]
            if policy:argv += ['--policy',str(root/'policy.json')]
            with patch.object(sys,"argv",argv),patch.object(runner.os,"sched_getaffinity",lambda _: {0},create=True), \
                 patch.object(runner.subprocess,"Popen",popen),patch.object(runner,"candidate_outcome",return_value=("passed","fixture_gain")), \
                 patch("builtins.print"):
                code=runner.main()
            result=json.loads((output/"report.json").read_text())
            self.assertTrue((output/"calibrate.stdout.log").read_bytes())
            return code,result,seen

    def test_sequential_calibration_then_comparison(self):
        code,result,seen=self.exercise("pass")
        self.assertEqual((code,result["status"],seen),(0,"passed",["calibrate","compare"]))
        self.assertTrue(all(p["exit_code"]==0 for p in result["phases"]))

    def test_unstable_calibration_never_runs_comparison(self):
        code,result,seen=self.exercise("unstable")
        self.assertEqual((code,result["status"],seen),(1,"measurement_unstable",["calibrate"]))

    def test_missing_report_is_failure_not_success(self):
        code,result,seen=self.exercise("missing_report")
        self.assertEqual((code,result["status"],seen),(1,"failed",["calibrate"]))
        self.assertIn("without terminal evidence",result["raw_error"])

    def test_policy_is_identical_in_both_measurement_phases(self):
        code,result,seen=self.exercise('pass',policy=True)
        self.assertEqual((code,result['status'],seen),(0,'passed',['calibrate','compare']))


if __name__=="__main__":unittest.main()
