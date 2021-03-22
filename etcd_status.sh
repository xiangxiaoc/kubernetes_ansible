#!/bin/bash

echo "check members ..."
ansible -i hosts.ini -u root -a '/opt/bin/etcdctl.sh member list' etcd_cluster

echo "check health ..."
ansible -i hosts.ini -u root -a '/opt/bin/etcdctl.sh endpoint health --cluster' etcd_cluster