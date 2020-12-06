#!/usr/bin/env bash

set -euo pipefail

docker run \
  --rm \
  -ti \
  -v "${PWD:?}":/work \
  -e "AWS_ACCESS_KEY_ID" \
  -e "AWS_SECRET_ACCESS_KEY" \
  -e "AWS_SESSION_TOKEN" \
  --network host \
  -w /work \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jameskyburz/ops-kitchen bash
