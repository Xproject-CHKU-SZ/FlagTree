"""Persisted CLI fail-closed fixtures; no deletion, model execution or publication."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import unittest

ROOT = None
SCRIPT = Path(__file__).parents[1] / "scripts/prepare_shape_release_delivery.py"


class DeliveryCLITest(unittest.TestCase):
    def run_case(self, name, chain_value=None, existing=False, malformed=False):
        root = ROOT / name; root.mkdir()
        chain = root / "chain"; chain.mkdir()
        if malformed:
            (chain / "progress.json").write_text("{malformed", encoding="utf8")
        elif chain_value is not None:
            (chain / "progress.json").write_text(json.dumps(chain_value), encoding="utf8")
        output = root / "output"
        if existing:
            output.mkdir(); (output / "preserve.txt").write_text("original", encoding="utf8")
        command = [sys.executable, str(SCRIPT), "--chain", str(chain), "--accepted", str(root / "absent-accepted.json"),
            "--control-source", str(root / "absent-control"), "--delivery-source", str(root / "absent-delivery"),
            "--ir-audit", str(root / "absent-IR.json"), "--terminal-proof", str(root / "absent-terminal.json"), "--output", str(output)]
        p = subprocess.run(command, capture_output=True)
        (root / "stdout.log").write_bytes(p.stdout); (root / "stderr.log").write_bytes(p.stderr)
        (root / "execution.json").write_text(json.dumps({"command":command,"exit_status":p.returncode}), encoding="utf8")
        return p, output

    def test_active_chain_cannot_export_or_count_models(self):
        p, out = self.run_case("active", {"status":"running", "records":[{"scope":200}]})
        self.assertEqual(p.returncode,2)
        report=json.loads((out/'report.json').read_text())
        self.assertEqual(report['status'],'not_ready');self.assertFalse(report['final_C1_accepted'])
        self.assertEqual(report['new_model_execution'],0)
        raw=report['chain_checkpoint_raw_utf8_at_read'].encode('utf8')
        self.assertEqual(hashlib.sha256(raw).hexdigest(),report['chain_checkpoint_sha256'])
        self.assertEqual(json.loads(raw)['status'],report['chain_status'])
        self.assertEqual({p.name for p in out.iterdir()},{'command.json','report.json'})

    def test_missing_chain_is_not_terminal_success(self):
        p,out=self.run_case("missing")
        self.assertEqual(p.returncode,2)
        report=json.loads((out/'report.json').read_text());self.assertEqual(report['error_type'],'FileNotFoundError')
        self.assertFalse(report['final_C1_accepted']);self.assertFalse((out/'models.json').exists())

    def test_existing_output_is_not_overwritten(self):
        p,out=self.run_case("existing", {'status':'running'},existing=True)
        self.assertNotEqual(p.returncode,0)
        self.assertEqual((out/'preserve.txt').read_text(),'original')
        self.assertEqual({p.name for p in out.iterdir()},{'preserve.txt'})

    def test_malformed_checkpoint_stays_unpublished(self):
        p,out=self.run_case("malformed",malformed=True)
        self.assertEqual(p.returncode,2)
        report=json.loads((out/'report.json').read_text());self.assertEqual(report['error_type'],'JSONDecodeError')
        self.assertFalse(report['final_C1_accepted']);self.assertTrue(report['traceback'])
        self.assertFalse((out/'sources.tar.gz').exists())


if __name__=='__main__':
    parser=argparse.ArgumentParser(add_help=False)
    parser.add_argument('--output-root',type=Path,required=True)
    args,remaining=parser.parse_known_args()
    ROOT=args.output_root;ROOT.mkdir(parents=True,exist_ok=False)
    unittest.main(argv=[sys.argv[0],*remaining])
