# infra/environments/production/backend.tf

terraform {
  backend "s3" {
    bucket         = "bidauc-terraform-state"
    key            = "production/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "bidauc-terraform-locks"
  }
}