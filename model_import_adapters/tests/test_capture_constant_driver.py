from pathlib import Path
import sys
import unittest

sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
from run_shape301_calibration import phase_command


class CaptureConstantDriverTest(unittest.TestCase):
    def test_opt_in_flag_is_present_in_both_phases_and_not_default(self):
        for phase in ('calibrate','compare'):
            options={'phase':phase,'strategy':'graph_replay'}
            if phase=='compare':options['calibration']=Path('aa/report.json')
            original=phase_command(Path('source'),Path('case'),Path('out'),**options)
            self.assertNotIn('--prepare-capture-constants',original)
            changed=phase_command(Path('source'),Path('case'),Path('out'),prepare_capture_constants=True,**options)
            self.assertEqual(changed,original+['--prepare-capture-constants'])


if __name__=='__main__':unittest.main()
