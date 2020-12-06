#!/usr/bin/env bash

set -euo pipefail

docker run \
  --rm \
  -ti \
  -v "${PWD:?}":/work \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jameskyburz/ops-kitchen bash
