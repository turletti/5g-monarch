#!/bin/bash
kubectl apply -f monarch-pv.yaml
./replace-node-ip.sh
./deploy-external.sh
./deploy-monarch-core.sh
./deploy-monarch-nss.sh
