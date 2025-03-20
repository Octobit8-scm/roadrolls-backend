terraform {
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "Octobit8-Private-Limited"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "roadrolls-backend"
    }
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}

resource "null_resource" "octobit8" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
