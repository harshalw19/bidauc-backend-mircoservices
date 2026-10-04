# infra/environments/staging/backend.tf

terraform {
  backend "s3" {
    bucket         = "bidauc-terraform-state"
    key            = "staging/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    use_lockfile = true
  }
}