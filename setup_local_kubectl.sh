#!/bin/bash

mkdir -p "$HOME/.kube"
cp -i data/k8s-master-1-kubeconfig/config "$HOME/.kube/config"
chown "$(id -u):$(id -g)" "$HOME/.kube/config"
