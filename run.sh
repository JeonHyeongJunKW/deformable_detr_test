#!/usr/bin/env bash
set -e

docker run --rm -it \
  --gpus all \
  --shm-size=8g \
  -v "$PWD/Deformable-DETR:/workspace/Deformable-DETR" \
  deformable_detr_test:0.0
