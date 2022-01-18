#!/bin/bash
# Generates cost allocation reports

DATE=$(date +%Y-%m-%d)
kubectl get --raw "/apis/cost.kubecost.com/v1/allocation?window=7d" > cost-report-$DATE.json
# 2022-05-27 - feat: Create budget alert system
# 2022-04-29 - fix: Correct cost calculation
# 2022-04-14 - config: Refactor cost queries
# 2022-03-30 - config: Refactor cost queries
# 2022-05-30 - config: Adjust monitoring thresholds
# 2022-02-24 - chore: Refactor cost queries
# 2022-04-20 - docs: Adjust monitoring thresholds
# 2022-01-07 - docs: Update documentation
# 2022-01-20 - feat: Implement savings recommendations
# 2022-01-25 - config: Adjust monitoring thresholds
# 2022-04-21 - feat: Implement savings recommendations
# 2022-03-03 - chore: Adjust monitoring thresholds
# 2022-05-17 - feat: Implement savings recommendations
# 2022-04-13 - chore: Update documentation
# 2022-01-18 - fix: Resolve metric collection
