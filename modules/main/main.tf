terraform {
  required_version = ">= 0.12.23"

  required_providers {
    # There is a bug in 2.4.1 with github_branch_protection import resource - https://github.com/terraform-providers/terraform-provider-github/issues/386
    github = {
      source  = "hashicorp/github"
      version = "~> 2.4"
    }
  }
}
