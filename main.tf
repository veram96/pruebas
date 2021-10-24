terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.27"
        }
}
}
provider "aws" {
    profile = "default"
    region  = "us-west-2"
}


#VPC
resource "aws_vpc" "main" {
    cidr_block = "172.31.0.0/16"
    tags = {
        Name = "vera-vpc"
    }
}
# resource "aws_vpc" "main2" {
#     cidr_block = "172.31.0.0/16"
#     tags = {
#         Name = "vera-vpc3"
#     }
# }
#