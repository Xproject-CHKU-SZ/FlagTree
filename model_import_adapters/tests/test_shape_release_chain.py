from argparse import Namespace
import contextlib
import copy
import io
from pathlib import Path
import sys
import unittest
from unittest import mock

sys.path.insert(0,str(Path(__file__).parents[1]/"scripts"))
import shape_release_chain as chain
import run_shape_release_wave as entry


class ReleaseChainTest(unittest.TestCase):
    def fixture(self):
        accepted=[{'model_id':f'fixture/{i}','revision':'a'*40,'task':'sequence_classification_logits','status':'passed',
                   'parameter_dtype':'FP32','device':'PPU-ZW810E','shape_count':5} for i in range(301)]
        models=[{key:row[key] for key in ('model_id','revision','task')} for row in accepted]
        plan={'schema':'shape301-release-chain-v1','stages':[{'scope':n} for n in chain.ENDPOINTS]}
        return accepted,models,plan

    def test_full_original301_and_six_fixed_prefixes(self):
        accepted,models,plan=self.fixture()
        prefixes=chain.validate_plan(plan,accepted,models,models[:50])
        self.assertEqual([len(x) for x in prefixes],[100,150,200,250,275,301])

    def test_duplicate_missing_revised_and_replaced_first50_rejected(self):
        accepted,models,plan=self.fixture()
        for bad in (models[:-1],models[:-1]+[models[0]],models[::-1]):
            with self.assertRaises(ValueError):chain.validate_plan(plan,accepted,bad,models[:50])
        for key in ('revision','task'):
            bad=copy.deepcopy(models);bad[100][key]='drift'
            with self.assertRaises(ValueError):chain.validate_plan(plan,accepted,bad,models[:50])
        with self.assertRaises(ValueError):chain.validate_plan({**plan,'stages':plan['stages'][1:]},accepted,models,models[:50])

    def test_explicit_existing100_can_continue150_without_restarting100(self):
        accepted,models,plan=self.fixture();plan['stages']=plan['stages'][1:]
        self.assertEqual([len(x) for x in chain.validate_plan(plan,accepted,models,models[:100])],[150,200,250,275,301])
        with self.assertRaises(ValueError):chain.validate_plan(plan,accepted,models,models[:99])

    def test_owned_launch_exec_gap_is_reobserved_not_restarted_or_adopted(self):
        fields=['0']*50;fields[19]='123'
        with mock.patch.object(Path,'read_text',return_value='42 (child) '+' '.join(fields)),\
             mock.patch.object(chain,'inspect_handle',side_effect=[ValueError('Previous command changed; do not restart or adopt it'),{'state':'live','start_ticks':123}]) as inspect,\
             mock.patch.object(chain.time,'sleep'):
            self.assertEqual(chain.observe_owned_launch(Namespace(pid=42),['python','run'])['start_ticks'],123)
            self.assertEqual(inspect.call_count,2)
            self.assertEqual(inspect.call_args.args,('/proc',42,['python','run'],123))
        with mock.patch.object(Path,'read_text',return_value='42 (child) '+' '.join(fields)),\
             mock.patch.object(chain,'inspect_handle',side_effect=ValueError('Previous PID reused; do not infer completion')):
            with self.assertRaisesRegex(ValueError,'PID reused'):chain.observe_owned_launch(Namespace(pid=42),['python'])

    def discovery(self):
        command=['python','actual.py','--source','source35','--output','wave100']
        return {'identity':{'model_ids':['a/b']}},{'child_pid':123,'command':command,'status':'running'}

    def test_discovery_owner_supplies_actual_child_not_a_new_run(self):
        checkpoint,owner=self.discovery()
        self.assertEqual(chain.discovery_job(checkpoint,owner,['a/b'],Path('source35'),Path('wave100'))['pid'],123)
        self.assertIsNone(chain.discovery_job(checkpoint,{},['a/b'],Path('source35'),Path('wave100')))

    def test_discovery_scope_owner_error_and_wrong_output_are_rejected(self):
        checkpoint,owner=self.discovery()
        with self.assertRaises(ValueError):chain.discovery_job(checkpoint,owner,['other'],Path('source35'),Path('wave100'))
        for bad in ({**owner,'status':'needs_attention'},{**owner,'child_exit_code':1}):
            with self.assertRaises(ValueError):chain.discovery_job(checkpoint,bad,['a/b'],Path('source35'),Path('wave100'))
        with self.assertRaises(ValueError):chain.discovery_job(checkpoint,owner,['a/b'],Path('other'),Path('wave100'))

    def test_only_full_independent_closure_authorizes_next_stage(self):
        good={'status':'passed','wave_closure_complete':True,'audited_records':50,'validated_models':50,'errors':[],
              'pending_retention_models':[],'pending_wave_models':[]}
        chain.require_closed_wave(good,50)
        for key,value in [('wave_closure_complete',False),('validated_models',49),('status','failed'),('errors',['error']),('pending_retention_models',['a/b'])]:
            with self.assertRaises(ValueError):chain.require_closed_wave({**good,key:value},50)

    def test_existing_frozen_helper_and_measured_source_are_separate(self):
        args=Namespace(accepted=Path('accepted'),source=Path('source39'),discovery_source=Path('source35'),runtime=Path('runtime'))
        command=chain.release_command('python',Path('helper42'),args,Path('models100'),Path('checkpoint100'),Path('discovery-job'),Path('old50'),Path('observed50'),Path('new100'))
        self.assertEqual(command[1],str(Path('helper42/model_import_adapters/scripts/run_shape_release_wave.py')))
        self.assertEqual(command[command.index('--source')+1],'source39')
        self.assertEqual(command[command.index('--previous-wave')+1],'old50')
        self.assertNotIn('--chain-plan',command)

    def test_waitid_preserves_terminal_child_for_next_verifier(self):
        with mock.patch.multiple(chain.os,waitid=mock.DEFAULT,P_PID=1,WEXITED=4,WNOWAIT=8,CLD_EXITED=1,create=True) as mocks:
            mocks['waitid'].return_value=Namespace(si_status=0,si_code=1)
            self.assertEqual(chain.peek_owned_exit(Namespace(pid=42)),0)
            mocks['waitid'].assert_called_once_with(1,42,12)
            mocks['waitid'].return_value=Namespace(si_status=15,si_code=2)
            self.assertEqual(chain.peek_owned_exit(Namespace(pid=42)),-15)

    def test_chain_entry_dispatch_does_not_start_single_wave(self):
        argv=['run.py','--chain-plan','plan']
        for key in ('accepted','models','discovery-source','source','discovery-checkpoint','discovery-job','runtime','output'):
            argv+=['--'+key,key]
        with mock.patch.object(sys,'argv',argv),mock.patch.object(chain,'run_chain',return_value=0) as execute,\
             mock.patch.object(Path,'mkdir',side_effect=AssertionError('dispatch must not create single-wave output')),contextlib.redirect_stdout(io.StringIO()):
            self.assertEqual(entry.main(),0);execute.assert_called_once()


class InitialResolutionTest(unittest.TestCase):
    def test_explicit_resolution_supports_initial100_not_only50(self):
        from shape_release_chain import initial_resolution
        from pathlib import Path
        for count in [50,100,150,200,250,275]:
            self.assertEqual(initial_resolution({"previous_resolution":"/explicit/retention.json"},count,count),Path("/explicit/retention.json"))

    def test_resolution_is_not_reused_for_a_later_prefix_or_invented(self):
        from shape_release_chain import initial_resolution
        self.assertIsNone(initial_resolution({"previous_resolution":"/explicit/retention.json"},150,100))
        self.assertIsNone(initial_resolution({},100,100))


if __name__=='__main__':unittest.main()
