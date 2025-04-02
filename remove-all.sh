#!/bin/bash
WORKING_DIR="$(pwd)"
./remove-monarch-nss.sh
./remove-monarch-core.sh
./remove-external.sh
kubectl -n monarch delete pvc data-datadist-thanos-receive-0 data-datadist-thanos-storegateway-0 datadir-datastore-mongodb-0
kubectl delete pv monarch-mongodb monarch-minio monarch-thanos monarch-thanos2
kubectl delete ns monarch
