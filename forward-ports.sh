#!/bin/bash

kubectl -n prometheus port-forward svc/prometheus-grafana 3000:80 2>&1 &
kubectl -n prometheus port-forward svc/prometheus-kube-prometheus-prometheus 9090:9090 2>&1 &
kubectl -n prometheus port-forward svc/prometheus-kube-prometheus-alertmanager 9093:9093 2>&1 &
kubectl -n falco port-forward svc/falco-falcosidekick-ui  2802:2802 2>&1 &
