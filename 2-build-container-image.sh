#!/bin/bash

set -eox pipefail

IMAGE="${IMAGE:-"quay.io/erkanerol/httpd-virtctl"}"
VERSION=v1

docker build -t "${IMAGE}:${VERSION}" .
