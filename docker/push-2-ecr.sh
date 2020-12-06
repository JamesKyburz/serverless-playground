#!/usr/bin/env bash

set -euo pipefail

name="docker-lambda"
version="latest"
docker build -t "${name:?}" .
region=us-east-1

account="$(aws sts get-caller-identity | jq -r '.Account')"
ecr_address="${account:?}.dkr.ecr.${region:?}.amazonaws.com"
ecr_tag="${ecr_address:?}/${name:?}"
docker tag "${name:?}" "${ecr_tag:?}:${version:?}"
aws ecr get-login-password \
  --region ${region:?} | \
  docker login \
  --username AWS \
  --password-stdin "${ecr_address:?}"
docker push "${ecr_tag:?}:${version:?}"
