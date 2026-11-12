"""Backport the scoped XPUOptions flag to the personal image's installed SDK."""
from pathlib import Path
from triton.backends.xpu import compiler

path = Path(compiler.__file__)
text = path.read_text()
for prefix, addition in (
    ('class XPUOptions:\n', '    kl3_softmax_shift: bool = False\n'),
    ('    def make_llir(mod, metadata, opt):\n',
     '        if opt.kl3_softmax_shift and opt.arch == 3:\n'
     '            mod.set_attr("flagtree.kl3_softmax_shift", ir.builder(mod.context).get_unit_attr())\n'),
):
    if text.count(prefix) != 1:
        raise RuntimeError(f'unexpected installed P800 compiler signature in {path}')
    text = text.replace(prefix, prefix + addition)
path.write_text(text)
