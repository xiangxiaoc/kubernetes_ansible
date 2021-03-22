# kubernetes_ansible
Quickly deploy kubernetes high-availability cluster with ansible based on kubeadm tool

## Cluster architecture

### Preparation for nodes

Host Name|Role|Size|Software list
---|---|---|---
etcd-1|Etcd node 1|2C 1G|etcd
ectd-2|Etcd node 2|2C 1G|etcd
ectd-3|Etcd node 3|2C 1G|etcd
k8s-lb-1|Load balancer primary node|2C 0.5G|haproxy keepalived
k8s-lb-2|Load balancer backup node|2C 0.5G|haproxy keepalived
k8s-master-1| Control node 1|4C 2G|docker, kubelet, kubeadm, kube-(apiserver, controller-manager, scheduler), ipvsadm
k8s-master-2| Control node 2|4C 2G|docker, kubelet, kubeadm, kube-(apiserver, controller-manager, scheduler), ipvsadm
k8s-master-3| Control node 3|4C 2G|docker, kubelet, kubeadm, kube-(apiserver, controller-manager, scheduler), ipvsadm
k8s-worker-1| Work node 1|4C 8G| docker, kubelet, kubeadm, ipvsadm

## Deployment