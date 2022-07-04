# ---------------------------------------------------------------------------------------------------------------------
# AWS PROVIDER FOR TF CLOUD
# ---------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = "~>1.2"
}


provider "aws" {
  #version = "~> 2.25"
  region  = var.aws_region
  profile = var.aws_profile
  access_key = "${var.nedal_access_key}"
  secret_key = "${var.nedal_secret_key}"
}

# ---------------------------------------------------------------------------------------------------------------------
# AWS PROVIDER USING TF CLI
# ---------------------------------------------------------------------------------------------------------------------

# provider "aws" {
#   profile = "default-ecs"
#   version = "~> 2.25"
#   region  = "${var.aws_region}"
# }

# terraform {
#   required_version = "~>0.12"
#   backend "remote" {
#     organization = "aws-isv"

#     workspaces {
#       name = "petclinic-fargate"
#     }
#   }
# }
