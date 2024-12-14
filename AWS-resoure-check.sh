#!/bin/bash


##############################################
#DATE: 14th December 2024
#Author: Ankit Khanduri
#Name: Demo Project on AWS resource list
#Version: PA1
#Following are the services supported by this script
#EC2
#S3
#EBS
#DynamoDB
#RDS
#Lambda
#VPC
#Cloud formation
#IAM
#cloudfront
#How to use: ./nameofthescript <region> <service_name>
#example: ./aws_resource_list.sh ap-south-1 EC2
###############################################

#checking if AWS is config is or not
#TO:khanduriankit001@gmail.com

if ! command -v aws &> /dev/null; then
    echo "ERROR!: AWS CLI is not installed. Please install AWS CLI."
    exit 1
fi

#checking if command line argumants are correct
 
if [ $# -ne 2 ]; then
	echo "failed: Please provide full command"
	echo "example: ./aws_resource_list.sh ap-south-1 EC2"
	exit 1
fi

#exectue the command to check the resources

case $2 in
	EC2)
		aws ec2 describe-instances --region $1
		;;
	S3)
		aws s3 ls --region $1
		;;
	IAM)
		aws iam list-users --region $1
		;;
esac





