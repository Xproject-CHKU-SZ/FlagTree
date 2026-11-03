"""Lock the historically verified vendor LLVM19 input, not a FlagTree binary."""
from pathlib import Path
import hashlib,re
p=Path('/opt/build-inputs/xtdk-llvm19.tar.gz')
h=hashlib.sha256(p.read_bytes()).hexdigest()
assert h=='17e3eb76022c590f17f2692c00687a4794c75882c51aab10e9b4ccfb117b4768',h
# setup's downloader needs a URL; file:// is consumed by urllib as usual.
t=Path('python/setup_tools/utils/xpu.py')
s=t.read_text();old='https://klx-sdk-release-public.su.bcebos.com/xtdk_llvm19/trust/latest/xtdk-llvm19-ubuntu2004_x86_64.tar.gz'
assert s.count(old)==1
s=s.replace(old,p.as_uri()).replace('md5_digest="d1eb1e77"','md5_digest="9dfd6756"').replace('version="20260916"','version="recovered-official071-535dbc11"')
t.write_text(s)
print('VENDOR_LLVM19_SHA256_VERIFIED')
