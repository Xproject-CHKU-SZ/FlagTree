#!/bin/sh
# Construct the runtime from the pinned standard image, then add replay/doc layer.
set -eu
cd "$(dirname "$0")"
BASE_IMAGE=${BASE_IMAGE:-flagtree-xpu3.6-py310-torch2.9.0-flaggems-main-dev:202608}
EXPECTED=sha256:cd53efa40eb7ddc49c2ad76a9bfbd252572c5fb01bd10d02cffbf667c34a1975
[ "$(docker image inspect "$BASE_IMAGE" --format '{{.Id}}')" = "$EXPECTED" ]
: "${REPLAY_DIR:?Set a NEW replay workspace}"
export REPLAY_DIR BASE_IMAGE
RUNTIME_IMAGE=flagtree-xpu-numerics-runtime:20261030-v3
export RUNTIME_IMAGE
docker build --pull=false --build-arg BASE_IMAGE="$BASE_IMAGE" -f Dockerfile.runtime -t "$RUNTIME_IMAGE" .
docker compose -p "${COMPOSE_PROJECT_NAME:-xpu-numerics-delivery}" config
docker compose -p "${COMPOSE_PROJECT_NAME:-xpu-numerics-delivery}" build --pull=false fixed
[ "$(docker image inspect "$BASE_IMAGE" --format '{{.Id}}')" = "$EXPECTED" ]
echo BASE_AND_BUILD_VERIFIED