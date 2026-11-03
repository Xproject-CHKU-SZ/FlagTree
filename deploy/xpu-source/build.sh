#!/bin/sh
set -eu
cd "$(dirname "$0")"
set -a
. ./.env
set +a
ROOT=$(git rev-parse --show-toplevel)
SHA=$(git rev-parse HEAD)
BASE=${BASE_IMAGE:?}
[ "$(docker image inspect "$BASE" --format '{{.Id}}')" = sha256:cd53efa40eb7ddc49c2ad76a9bfbd252572c5fb01bd10d02cffbf667c34a1975 ]
[ -z "$(git -C "$ROOT" status --porcelain --untracked-files=no)" ] || { echo 'Tracked source changes exist; use a clean checkout.' >&2;exit 2; }
[ "$(sha256sum "${XPU_LLVM19_ARCHIVE:?}" | cut -d ' ' -f1)" = 17e3eb76022c590f17f2692c00687a4794c75882c51aab10e9b4ccfb117b4768 ]
CTX=$(mktemp -d)
# No deletion traps: keep failed contexts for investigation; path is printed.
echo "BUILD_CONTEXT=$CTX SOURCE_COMMIT=$SHA"
mkdir "$CTX/source"
git -C "$ROOT" archive HEAD | tar -x -C "$CTX/source"
cp "$XPU_LLVM19_ARCHIVE" "$CTX/xtdk-llvm19.tar.gz"
cp Dockerfile "$CTX/Dockerfile"
mkdir -p "${RESULTS_DIR:?}"
docker build --pull=false --build-arg BASE_IMAGE="$BASE" --build-arg SOURCE_COMMIT="$SHA" -t flagtree-xpu-from-source:local "$CTX" > "$RESULTS_DIR/build.log" 2>&1 || { tail -80 "$RESULTS_DIR/build.log";exit 1; }
docker image inspect flagtree-xpu-from-source:local > "$RESULTS_DIR/image.json"
echo SOURCE_BUILD_PASSED
