#!/bin/bash

set -eox pipefail

IMAGE="${IMAGE:-"quay.io/erkanerol/httpd-virtctl:v1"}"

docker build -t "${IMAGE}" .
docker push "${IMAGE}"
