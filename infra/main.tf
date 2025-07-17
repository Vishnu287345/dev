terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
  }

  required_version = ">= 1.0.0"
}

provider "null" {}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello from Terraform!"
  }
}
