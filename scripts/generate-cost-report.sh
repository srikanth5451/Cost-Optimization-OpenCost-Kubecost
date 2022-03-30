#!/bin/bash
# Generates cost allocation reports

DATE=$(date +%Y-%m-%d)
kubectl get --raw "/apis/cost.kubecost.com/v1/allocation?window=7d" > cost-report-$DATE.json
# 2022-05-27 - feat: Create budget alert system
# 2022-04-29 - fix: Correct cost calculation
# 2022-04-14 - config: Refactor cost queries
# 2022-03-30 - config: Refactor cost queries
