#!/bin/bash

set -eox pipefail

oc -n openshift-cnv delete pod downloads --ignore-not-found
oc -n openshift-cnv delete service downloads --ignore-not-found
oc -n openshift-cnv delete route downloads --ignore-not-found

oc -n openshift-cnv run downloads --image="${IMAGE}"  \
    --restart=OnFailure --port 80 --expose


oc -n openshift-cnv create route edge --service=downloads --port=80

oc apply -f consoleclidownload-virtctl-demo.yaml
