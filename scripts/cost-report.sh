#!/bin/bash
# Generates daily cost reports

NAMESPACE=${1:-all}
DATE=$(date +%Y-%m-%d)

kubectl get --raw "/apis/cost.kubecost.com/v1/allocation?window=1d&aggregate=namespace&namespace=${NAMESPACE}" > cost-report-${DATE}.json
# 2023-01-02 - config: Update storage pricing
# 2023-01-02 - config: Update storage pricing
# 2023-01-04 - chore: Cleanup old reports
# 2023-01-05 - docs: Update optimization guide
# 2023-01-06 - fix: Resolve metric collection
# 2023-01-09 - chore: Update OpenCost version
# 2023-01-10 - feat: Add OpenCost dashboard
# 2023-01-30 - chore: Cleanup old reports
# 2023-02-03 - docs: Add cost benchmarks
# 2023-02-06 - feat: Create savings report
