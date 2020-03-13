terraform {
  required_version = "~> 0.12.23"

  required_providers {
    github = "~> 2.4"
  }

  # https://www.terraform.io/docs/configuration/terraform.html#experimental-language-features
  experiments = [variable_validation]
}

provider "github" {
  organization = var.github_organization
}
