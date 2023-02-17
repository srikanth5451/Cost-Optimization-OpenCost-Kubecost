#!/bin/bash
# Generates cost allocation reports

DATE=$(date +%Y-%m-%d)
kubectl get --raw "/apis/cost.kubecost.com/v1/allocation?window=7d" > cost-report-$DATE.json
