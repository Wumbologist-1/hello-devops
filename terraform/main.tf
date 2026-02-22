terraform {
  required_version = ">= 1.5.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "devops_proof" {
  filename = "${path.module}/generated_by_terraform.txt"
  content  = "Terraform applied successfully. Managed as code."
}
