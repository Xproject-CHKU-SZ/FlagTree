"""Backport the new flag to the v7 image's pinned Python backend."""
from pathlib import Path

path = Path('/opt/hsp/triton/backends/xpu/compiler.py')
source = path.read_text()
for anchor, addition in (
    ('    kl3_softmax_shift: bool = False\n', '    kl3_row_softmax: bool = False\n'),
    ('    def make_llir(mod, metadata, opt):\n',
     '        if opt.kl3_row_softmax and opt.arch == 3:\n'
     '            mod.set_attr("flagtree.kl3_row_softmax", ir.builder(mod.context).get_unit_attr())\n'),
):
    if source.count(anchor) != 1:
        raise ValueError(f'Incompatible installed backend in {path}')
    source = source.replace(anchor, anchor + addition)
path.write_text(source)
