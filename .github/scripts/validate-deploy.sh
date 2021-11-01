#!/usr/bin/env bash

KUBECONFIG=$(cat ./kubeconfig)

#wait for the deployments to finish
sleep 5m

kubectl rollout status deployment/event-api-deployment -n masbas
if [[ $? -ne 0 ]]; then
    echo "deployment failed with exit code $? in namespace masbas"
    exit 1
fi
