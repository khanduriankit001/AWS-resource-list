# ***AWS Resource List Script***

## ***What is this script?***

This script helps you quickly check your AWS resources, like EC2 instances, S3 buckets, and IAM users, directly from the command line. It uses the AWS CLI to fetch information about your resources in a specific AWS region.

This is super useful if you want to see what’s going on with your AWS services without having to log into the AWS Console.

## ***What can this script do?***

This script currently works with the following AWS services:


EC2: View your EC2 instances (servers).

S3: See a list of your S3 buckets (storage containers).

IAM: List the users in your AWS account.

EBS: (Coming soon) List your EBS volumes.

DynamoDB: (Coming soon) List your DynamoDB tables.

RDS: (Coming soon) List your RDS databases.

Lambda: (Coming soon) List your Lambda functions.

VPC: (Coming soon) View your Virtual Private Cloud (VPC) configurations.

CloudFormation: (Coming soon) List your CloudFormation stacks.

CloudFront: (Coming soon) List your CloudFront distributions.

You can add more services in the future if needed!

---

Before You Start

To use this script, you need to have a couple of things set up:

***1. AWS CLI***

This script uses the AWS Command Line Interface (CLI) to interact with your AWS account. You need to have it installed and configured on your computer.

You can install the AWS CLI by following the instructions here: AWS CLI Installation Guide.

To check if the AWS CLI is installed, run this command in your terminal:

---
bash
Copy code
aws --version
If you see a version number, you're good to go!

---


***2. AWS Account and Permissions***

You'll need an AWS account, and your AWS credentials must have permission to view the resources you're interested in.

How to Use the Script

Once you’ve set everything up, here’s how to use the script.

### Step 1: Download the Script

You can download the script by cloning this repository:

***bash
Copy code
git clone https://github.com/your-username/aws-resource-list.git
cd aws-resource-list***

### Step 2: Make the Script Executable

In order to run the script, you need to make it executable. Run this command:

bash

Copy code

chmod +x aws_resource_list.sh

### Step 3: Run the Script

To use the script, you’ll need to provide two pieces of information:


Region: The AWS region where you want to check the resources (e.g., us-east-1, ap-south-1).

Service: The AWS service you want to check (e.g., EC2, S3, IAM).

Here’s how you would use the script to check your EC2 instances in the ap-south-1 region:

bash

Copy code

./aws_resource_list.sh ap-south-1 EC2

Example Usage

To list EC2 instances in the us-west-2 region:



bash

Copy code

./aws_resource_list.sh us-west-2 EC2

To list S3 buckets in the us-east-1 region:


bash

Copy code

./aws_resource_list.sh us-east-1 S3

What Happens When You Run the Script?
The script checks if you’ve installed the AWS CLI.

It will check if you've entered the correct number of arguments (two: region and service).

Then it runs the corresponding AWS CLI command to fetch the resources and displays them on the screen.

If anything goes wrong, it will show you a helpful error message to guide you in the right direction!


How Does the Script Work?

The script checks which AWS service you're interested in (like EC2, S3, etc.), and then uses the AWS CLI to list the resources for that service in the specified region.

If you want to add more services, you can easily modify the script. It’s designed to be simple and easy to extend!


Troubleshooting

If you see an error, here are a couple of things to check:

AWS CLI Not Installed: If the script says the AWS CLI is not installed, make sure you’ve followed the installation steps for AWS CLI.

Incorrect Arguments: If you don’t provide the region or service name correctly, the script will let you know what’s missing. Just make sure you’re following the correct format!


Contributing
Want to help improve this script? Feel free to fork this project and submit a pull request. Any improvements or suggestions are welcome!


