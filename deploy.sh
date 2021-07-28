#!/bin/bash

set -eox pipefail

oc -n openshift-cnv delete pod downloads --ignore-not-found
oc -n openshift-cnv delete service downloads --ignore-not-found
oc -n openshift-cnv delete route downloads --ignore-not-found

oc -n openshift-cnv run downloads --image="quay.io/erkanerol/virt-artifacts-server:v1"  \
    --restart=OnFailure --port 8080 --expose


oc -n openshift-cnv create route edge --service=downloads --port=8080

oc apply -f consoleclidownload-virtctl-demo.yaml
