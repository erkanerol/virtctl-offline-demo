#!/bin/bash

set -eox pipefail

rm -Rf artifacts
mkdir artifacts
cd artifacts

wget https://github.com/kubevirt/kubevirt/releases/download/v0.40.0/virtctl-v0.40.0-darwin-amd64
wget https://github.com/kubevirt/kubevirt/releases/download/v0.40.0/virtctl-v0.40.0-linux-amd64
wget https://github.com/kubevirt/kubevirt/releases/download/v0.40.0/virtctl-v0.40.0-windows-amd64.exe