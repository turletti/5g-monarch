#!/bin/bash

echo 'Submit r2lab request'
echo 'python3 request_translator/test_api.py --json_file request_translator/requests/request_slice_r2lab.json submit'
python3 request_translator/test_api.py --json_file request_translator/requests/request_slice_r2lab.json submit

echo "Check that metrics services are running"
kubectl get svc -n open5gs | grep metrics
