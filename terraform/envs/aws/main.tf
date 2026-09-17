# Phase 2 — AWS Windows demo VM
# TODO: module aws_windows_demo, outputs private_ip for Ansible inventory

terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# provider "aws" { region = var.aws_region }

# module "demo" {
#   source = "../../modules/aws_windows_demo"
# }
