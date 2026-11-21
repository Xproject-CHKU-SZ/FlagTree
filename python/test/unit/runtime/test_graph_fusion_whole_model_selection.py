"""Whole-output admission and bounded noisy-block remeasurement."""
import unittest

from triton.experimental.graph_fusion._whole_model_selection import ModelRoute, select_whole_model


class SelectionTests(unittest.TestCase):
    def select(self, native, fused, *, record=None, **options):
        record = {} if record is None else record
        routes = {name: ModelRoute(lambda n=name: n) for name in ('native', 'fused', 'incorrect')}
        counts = dict.fromkeys(routes, 0)

        def validate(name, output, args, kwargs):
            if output == 'incorrect':
                raise AssertionError('Incorrect complete output')

        def measure(fn):
            name = next(n for n, route in routes.items() if route.call is fn)
            self.assertNotEqual(name, 'incorrect')
            index = counts[name]
            counts[name] += 1
            value = (native if name == 'native' else fused)[index]
            if isinstance(value, Exception):
                raise value
            return [value] * 10

        chosen = select_whole_model(routes, validation_inputs=[((), {})], validate=validate,
                                    measure=measure, record=record, preferred='native', **options)
        self.assertIs(chosen, routes[record['route']].call)
        self.assertEqual(counts['incorrect'], 0)
        return record, counts

    def test_full_noisy_block_replaced_and_preserved_for_audit(self):
        native = [.0093712, .0102020, .0093477, .0093467]
        fused = [.0053311, .0053118, .0053047, .0053366]
        before, _ = self.select(native, fused, max_remeasurements=0)
        self.assertEqual(before['route'], 'native')
        after, counts = self.select(native + [.00935]*4, fused + [.00532]*4)
        self.assertEqual(after['route'], 'fused')
        self.assertEqual(counts['native'], 8)
        old = after['timing_attempts'][0]['candidates']['native']['raw_seconds']
        self.assertEqual(old, [x for value in native for x in [value]*10])
        self.assertEqual(after['candidates']['native']['raw_seconds'], [.00935]*40)
        self.assertTrue(after['gain_check']['stable'])

    def test_persistent_drift_is_bounded_and_rejected(self):
        result, counts = self.select([.025, .03, .045, .055]*2, [.012]*8)
        self.assertEqual(result['route'], 'native')
        self.assertEqual(counts['native'], 8)

    def test_fresh_tie_or_reversed_winner_keeps_native(self):
        for fresh in (.00995, .012):
            result, _ = self.select([.01, .012, .01, .01] + [.01]*4, [.005]*4 + [fresh]*4)
            self.assertEqual(result['route'], 'native')

    def test_single_spike_cannot_promote_slower_route(self):
        result, counts = self.select([.01, .01, .04, .01], [.012]*4)
        self.assertEqual(result['route'], 'native')
        self.assertEqual(counts['native'], 4)

    def test_stable_winner_does_not_trigger_remeasurement(self):
        result, counts = self.select([.01]*4, [.005]*4)
        self.assertEqual(result['route'], 'fused')
        self.assertEqual(counts['native'], 4)

    def test_invalid_fresh_timing_cannot_publish_a_winner(self):
        for bad in (float('nan'), float('inf'), 0, -1):
            record = {'route': 'stale', 'mean_seconds': {'stale': .001}}
            with self.assertRaisesRegex(RuntimeError, 'Invalid complete-model timing'):
                self.select([.01, .012, .01, .01, bad], [.005]*8, record=record)
            self.assertNotIn('route', record)
            self.assertNotIn('mean_seconds', record)
            self.assertEqual(record['state'], 'invalid_timing')

    def test_fresh_execution_failure_is_not_swallowed(self):
        record = {}
        with self.assertRaisesRegex(RuntimeError, 'device failure'):
            self.select([.01, .012, .01, .01, RuntimeError('device failure')], [.005]*8,
                        record=record)
        self.assertNotIn('route', record)

    def test_retry_limit_validation(self):
        for value in (-1, 3, True, .5):
            with self.assertRaises(ValueError):
                self.select([.01]*4, [.005]*4, max_remeasurements=value)


if __name__ == '__main__':
    unittest.main()
