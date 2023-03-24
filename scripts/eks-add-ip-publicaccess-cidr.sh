#!/bin/bash
# Usage:
# $1: Cluster name
EXISTING_IPS=$(aws eks describe-cluster --name "$1" --query "cluster.resourcesVpcConfig.publicAccessCidrs")
NEW_IPS=$(echo "$EXISTING_IPS" | jq ". += [\"$(curl -s ifconfig.me)/32\"]")
aws eks update-cluster-config \
   --name "$1" \
   --resources-vpc-config publicAccessCidrs="$NEW_IPS"

