#!/bin/bash
echo export bucket_name=<nama_s3> >> .bashrc
echo export KOPS_CLUSTER_NAME=<nama_cluster.domain_route53> >> .bashrc
echo export KOPS_STATE_STORE=s3://\${bucket_name} >> .bashrc
echo [default] >> ~/.aws/credentials
echo aws_access_key_id = <paste_key_id> >> ~/.aws/credentials
echo aws_secret_access_key = <paste_secret_access_key> >> ~/.aws/credentials
echo [default] >> ~/.aws/credentials
echo region = <sesuaikan_region> >> ~/.aws/credentials
echo output = json >> ~/.aws/credentials
source .bashrc
