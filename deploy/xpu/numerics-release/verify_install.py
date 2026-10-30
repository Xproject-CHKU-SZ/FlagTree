"""Verify pinned package bytes without initializing the device."""
import hashlib,json,os
from pathlib import Path
R=Path(__file__).resolve().parent
P=Path(os.environ.get('FIX_PREFIX','/opt/xpu-fix'))
lock=json.loads((R/'release.json').read_text())
def digest(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for c in iter(lambda:f.read(1048576),b''):h.update(c)
 return h.hexdigest()
assert digest(P/'runtime/triton/_C/libtriton.so')==lock['core_sha256']
for path,expected in json.loads((R/'payload/flaggems_hashes.json').read_text()).items():
 assert digest(P/'flaggems'/path)==expected,path
print('INSTALL_HASHES_VERIFIED')
