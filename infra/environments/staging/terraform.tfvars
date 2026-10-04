# infra/environments/staging/terraform.tfvars
# Actual values for staging environment variables

aws_region  = "ap-south-1"
environment = "staging"
project     = "bidauc"

# VPC
vpc_cidr            = "10.0.0.0/16"
availability_zones  = ["ap-south-1a", "ap-south-1b"]

# Public subnets — for ALB, NAT Gateway
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]

# Private subnets — for EKS nodes (never directly reachable from internet)
private_subnet_cidrs = ["10.0.10.0/24", "10.0.11.0/24"]

# EKS — smaller for staging (cost optimization)
eks_cluster_version    = "1.31"
eks_node_instance_type = "t3.medium"
eks_node_min_size      = 1
eks_node_max_size      = 2
eks_node_desired_size  = 1