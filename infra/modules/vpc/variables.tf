# infra/modules/vpc/variables.tf

variable "project" {
  description = "Project name used in resource naming"
  type        = string
}

variable "environment" {
  description = "Environment name used in resource naming"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones to deploy subnets into"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets — one per AZ"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets — one per AZ"
  type        = list(string)
}

variable "single_nat_gateway" {
  description = "Use a single NAT gateway for all AZs. Cost-optimized for staging. Set false for production HA."
  type        = bool
  default     = false
}