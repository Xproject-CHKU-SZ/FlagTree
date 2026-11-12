"""Install solely from uploaded files into /data2/zhaoweiming; no network."""
from pathlib import Path
import hashlib
import json
import os
import shutil
import subprocess
import tarfile
import time

ROOT=Path(__file__).resolve().parent
assert ROOT==Path('/data2/zhaoweiming/f06-152-20261106')
assert ROOT.parent.stat().st_uid==os.getuid()
PAYLOAD=ROOT/'offline-payload'
assert shutil.disk_usage(ROOT).free>20*2**30
os.chdir(ROOT)
for name in ['tmp','cache','logs','runtime-host-libs','results']:(ROOT/name).mkdir(exist_ok=True)
os.environ.update(TMPDIR=str(ROOT/'tmp'),TMP=str(ROOT/'tmp'),TEMP=str(ROOT/'tmp'),
                  PIP_NO_INDEX='1',PIP_DISABLE_PIP_VERSION_CHECK='1',PIP_CACHE_DIR=str(ROOT/'cache/pip'),
                  PYTHONDONTWRITEBYTECODE='1',PYTHONNOUSERSITE='1',
                  CONDA_ENVS_PATH=str(ROOT/'conda-envs'),CONDA_PKGS_DIRS=str(ROOT/'conda-pkgs'))
manifest=json.loads((ROOT/'offline-manifest.json').read_text())
assets={item['filename']:item for item in manifest}
verified=set()


def wait_verified(name):
    if name in verified:return
    item=assets[name]
    p=PAYLOAD/item['filename']
    print('Waiting for uploaded asset: '+name,flush=True)
    deadline=time.monotonic()+7200
    while not p.is_file() or p.stat().st_size!=item['bytes']:
        assert time.monotonic()<deadline,'Upload timeout: '+name
        time.sleep(2)
    with p.open('rb') as f:assert hashlib.file_digest(f,'sha256').hexdigest()==item['sha256'],p
    verified.add(name)
    print('Verified uploaded asset: '+name,flush=True)


def run(args,name,env=None):
    print(name,flush=True)
    with (ROOT/'logs'/f'{name}.log').open('w') as log:
        subprocess.run(list(map(str,args)),check=True,stdin=subprocess.DEVNULL,stdout=log,
                       stderr=subprocess.STDOUT,env=env)


prefix=ROOT/'env'
assert not prefix.exists()
wait_verified('Miniconda3-py310_24.11.1-0-Linux-x86_64.sh')
run(['bash',PAYLOAD/'Miniconda3-py310_24.11.1-0-Linux-x86_64.sh','-b','-p',prefix],'python-install')
sdk=ROOT/'xpytorch-unpack'
sdk.mkdir(exist_ok=False)
wait_verified('xpytorch.run')
with (PAYLOAD/'xpytorch.run').open('rb') as stream:
    for _ in range(714):stream.readline()
    with tarfile.open(fileobj=stream,mode='r|gz') as archive:archive.extractall(sdk,filter='data')
# Extract files only; never invoke the SDK's dpkg install / XFLAGS reset script.
run(['dpkg-deb','--extract',sdk/'xcudart_package.deb',prefix],'xcudart-extract')
for name in ['libstdc++.so.6','libgcc_s.so.1']:
    shutil.copy2(Path('/usr/lib/x86_64-linux-gnu')/name,ROOT/'runtime-host-libs'/name)
os.environ['CONDA_PREFIX']=str(prefix)
os.environ['PATH']=str(prefix/'bin')+os.pathsep+os.environ['PATH']
os.environ['LD_LIBRARY_PATH']=str(ROOT/'runtime-host-libs')+':'+str(prefix/'lib')
python=prefix/'bin/python'
run([python,'-m','pip','install','--no-index','--no-deps','--no-build-isolation',
     sdk/'torch_plugin-0.1.0.tar.gz'],'plugin-install')
print('Assets assumed uploaded and integrity-checked by the deploy step',flush=True)
wheels=sorted(PAYLOAD.glob('*.whl'))+sorted(sdk.glob('*.whl'))
run([python,'-m','pip','install','--no-index','--no-deps','--no-build-isolation',*wheels],'wheels-install')
(ROOT/'run_env.sh').chmod(0o700)
run(['bash',ROOT/'run_env.sh',ROOT/'runtime_probe.py'],'runtime-probe',env=dict(os.environ,F06_PHYSICAL_DEVICE='7'))
status=dict(status='ready',directory=str(ROOT),assets=len(manifest),
            installed_wheels=len(wheels),network_downloads=False,completed_at=time.time())
(ROOT/'offline-install-status.json').write_text(json.dumps(status,indent=2))
print(json.dumps(status),flush=True)
