#!/bin/bash

#This script is used to track AWS resources.
#AWS EC2
#AWS S3
#AWS Lambda
#AWS IAM users and roles

set -x

#list s3 buckets
echo "list of S3 buckets"
aws s3 ls

#list ec2 instances
echo "list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda functions
echo "list of lambda functions"
aws lambda list-functions | jq '.Functions[].FunctionName'

#list IAM users
echo "list of IAM users"
aws iam list-users | jq '.Users[].UserName'
