"""Structural dependency tests; set XPU_DMA_OPT to the built compiler tool."""
import json,os,subprocess,unittest
from pathlib import Path
class DmaTests(unittest.TestCase):
    def run_ir(self, ir=None, mode='--pipeline'):
        source=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        p=subprocess.run([os.environ['XPU_DMA_OPT'],mode],input=source if ir is None else ir,text=True,capture_output=True)
        self.assertEqual(p.returncode,0,p.stderr)
        return p.stdout,json.loads(p.stderr.strip().splitlines()[-1])
    def test_prefetch_keeps_math_and_restores_kernel_convention(self):
        before=Path(__file__).with_name('dma-dense-multiply.ll').read_text();after,stats=self.run_ir()
        self.assertEqual(stats,dict(grouped_load_waits=1,hoisted_store_waits=1,pipelined_loops=1))
        self.assertIn('amdgpu_gfx_whole_wave void @dense_mul',after);self.assertIn('dma.ready = phi',after)
        for op in ['fmul <16 x float>', 'vfloat2fp16_l.rn', 'vfp162float_l.rn', 'load <32 x half>', 'store <32 x half>']:
            self.assertEqual(before.count(op),after.count(op),op)
        self.assertIn('icmp uge i64',after)
        self.assertIn('dma.triple',after)
        # A rejected lookahead retains a conditional output wait before the
        # next ordinary input read; the exit also drains the last output.
        self.assertGreaterEqual(after.count('call void @llvm.xpu.mfence.v2'),4)
    def test_sync_mode_does_not_allocate_pingpong(self):
        after,stats=self.run_ir(mode='--sync');self.assertEqual(stats['pipelined_loops'],0);self.assertNotIn('dma.pingpong',after)
    def test_sdnn_and_non_kl3_are_unchanged(self):
        before=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        for text in (before.replace('xpu3-baidu','xpu2-baidu'),before.replace('"target-cpu"="xpu3"','"target-cpu"="xpu3" "target-features"="+cdnn3"')):
            after,stats=self.run_ir(text);self.assertEqual(after,text);self.assertFalse(any(stats.values()))
    def test_volatile_access_prevents_store_hoist_and_prefetch(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text().replace('store <32 x half>','store volatile <32 x half>')
        _,stats=self.run_ir(text);self.assertEqual(stats['hoisted_store_waits'],0);self.assertEqual(stats['pipelined_loops'],0)
    def test_overlapping_iterations_keep_store_wait(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text().replace('%33 = shl nuw nsw i32 %32, 2','%33 = shl nuw nsw i32 %32, 1')
        _,stats=self.run_ir(text,mode='--sync');self.assertEqual(stats['hoisted_store_waits'],0)
    def test_shared_input_destination_keeps_waits(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        text=text.replace('@llvm.xpu.gm2lm_v3(ptr nonnull %18,', '@llvm.xpu.gm2lm_v3(ptr nonnull %19,')
        _,stats=self.run_ir(text)
        self.assertEqual(stats['grouped_load_waits'],0)
        self.assertEqual(stats['pipelined_loops'],0)
    def test_unknown_consumer_blocks_input_grouping_and_prefetch(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        text=text.replace('  %30 = getelementptr', '  call void @unknown_consumer()\n  %30 = getelementptr')
        text+='\ndeclare void @unknown_consumer()\n'
        _,stats=self.run_ir(text)
        self.assertEqual(stats['grouped_load_waits'],0)
        self.assertEqual(stats['pipelined_loops'],0)
    def test_different_input_index_prevents_prefetch(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        text=text.replace('%30 = getelementptr half, ptr addrspace(1) %1, i64 %25',
                          '%30 = getelementptr half, ptr addrspace(1) %1, i64 0')
        _,stats=self.run_ir(text)
        self.assertEqual(stats['pipelined_loops'],0)
    def test_periodic_bias_has_bounded_disjoint_prefetch(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        text=text.replace('  %30 = getelementptr half, ptr addrspace(1) %1, i64 %25',
            '  %bias.index = srem i32 %21, 4096\n  %bias.wide = sext i32 %bias.index to i64\n  %30 = getelementptr half, ptr addrspace(1) %1, i64 %bias.wide')
        # The fixture uses %21 as the flat index (see the bounded DMA length).
        after,stats=self.run_ir(text)
        self.assertEqual(stats['pipelined_loops'],1)
        self.assertIn('8192',after) # Independent broadcast allocation extent.
        self.assertIn('icmp uge i64',after)
    def test_local_scratch_is_counted_and_unknown_calls_still_block(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        text=text.replace('  %7 =', '  %scratch = alloca [16 x float], align 64\n  %7 =',1)
        text=text.replace('  %32 = phi', '  %32 = phi')
        text=text.replace('  %33 =', '  call void @llvm.lifetime.start.p0(ptr %scratch)\n  store float 0.0, ptr %scratch, align 64\n  call void @llvm.lifetime.end.p0(ptr %scratch)\n  %33 =',1)
        text+='\ndeclare void @llvm.lifetime.start.p0(ptr nocapture)\ndeclare void @llvm.lifetime.end.p0(ptr nocapture)\n'
        _,stats=self.run_ir(text)
        self.assertEqual(stats['pipelined_loops'],1)
        _,stats=self.run_ir(text.replace('[16 x float]', '[2048 x float]'))
        self.assertEqual(stats['pipelined_loops'],0)
    def test_bias_output_retarget_requires_read_before_write(self):
        text=Path(__file__).with_name('dma-dense-multiply.ll').read_text()
        text=text.replace('  %30 = getelementptr half, ptr addrspace(1) %1, i64 %25',
            '  %bias.index = srem i32 %21, 4096\n  %bias.wide = sext i32 %bias.index to i64\n  %30 = getelementptr half, ptr addrspace(1) %1, i64 %bias.wide')
        # Output is already the flat input in this fixture; the bias must
        # remain immutable. A write to it makes caching invalid.
        text=text.replace('  %33 =', '  store half 0.0, ptr %18, align 2\n  %33 =',1)
        _,stats=self.run_ir(text)
        self.assertEqual(stats['pipelined_loops'],0)
    def test_broadcast_output_reuse_requires_disjoint_local_slices(self):
        source=Path(__file__).with_name('dma-broadcast-add.ll').read_text()
        _,stats=self.run_ir(source)
        self.assertEqual(stats['pipelined_loops'],1)
        # Shortening the vector-loop stride causes consecutive read/write
        # slices to overlap. Do not retarget the bias output in this case.
        bad=source.replace('%35 = shl nuw nsw i32 %34, 2','%35 = shl nuw nsw i32 %34, 1')
        if bad==source:
            import re
            bad=re.sub(r'(= shl nuw nsw i32 %\d+), 2',r'\1, 1',source,count=1)
        self.assertNotEqual(source,bad)
        _,stats=self.run_ir(bad)
        self.assertEqual(stats['pipelined_loops'],0)
if __name__=='__main__':unittest.main()
