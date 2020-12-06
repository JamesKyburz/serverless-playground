#!/usr/bin/env bash

set -euo pipefail

name="docker-lambda"
docker build -t "${name:?}" .
