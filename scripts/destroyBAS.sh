#!/usr/bin/env bash

PROJECTNAME="$1"
CHARTS_DIR=$(cd $(dirname $0)/../charts; pwd -P)

echo "removing bas...."
kubectl create -f ${CHARTS_DIR}/delete-db.yaml
kubectl delete -f ${CHARTS_DIR}/api-key.yaml
kubectl delete -f ${CHARTS_DIR}/analytics-proxy.yaml
kubectl delete -f ${CHARTS_DIR}/bas-subscription.yaml
kubectl delete -f ${CHARTS_DIR}/bas-og.yaml
kubectl delete ClusterServiceVersion behavior-analytics-services-operator.v1.1.0
kubectl delete CustomResourceDefinition airgappeddeployments.bas.ibm.com
kubectl delete CustomResourceDefinition analyticsproxies.bas.ibm.com
kubectl delete CustomResourceDefinition dashboards.bas.ibm.com
kubectl delete CustomResourceDefinition deleteclusters.bas.ibm.com
kubectl delete CustomResourceDefinition fulldeployments.bas.ibm.com
kubectl delete CustomResourceDefinition generatekeys.bas.ibm.com
kubectl delete CustomResourceDefinition storeforwardmetrics.bas.ibm.com

sleep 1m

kubectl delete namespace ${PROJECTNAME}