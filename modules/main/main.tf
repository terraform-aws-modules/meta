terraform {
  required_version = ">= 0.12.23, < 0.14"

  required_providers {
    # There is a bug in 2.4.1 with github_branch_protection import resource - https://github.com/terraform-providers/terraform-provider-github/issues/386
    github = "~> 2.4"
  }
}
