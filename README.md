# Provision an EC2 instance in AWS

This Terraform configuration provisions an EC2 instance in AWS using Terraform 0.12+ syntax.

## Details

By default, this configuration provisions the latest Ubuntu 18.04 AMI with type t2.micro in the us-west-1 region. The AMI Owner, AMi Search Name, region, and type can all be set as variables. You can also set the name variable to determine the value set for the Name tag.

Note that you need to set environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY.
