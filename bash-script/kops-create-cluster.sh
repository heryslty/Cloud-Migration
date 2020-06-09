#!/bin/bash
kops create cluster --node-size=t2.medium --zones=ap-southeast-1a --node-count=3 --name=${KOPS_CLUSTER_NAME} --ssh-public-key=~/.ssh/id_rsa.pub
kops update cluster --name ${KOPS_CLUSTER_NAME} --yes
