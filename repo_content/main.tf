terraform {
  required_version = "~> 0.12.23"

  required_providers {
    githubfile = "~> 1.1"
  }

  # https://www.terraform.io/docs/configuration/terraform.html#experimental-language-features
  experiments = [variable_validation]
}

# @todo: manage basic files in those repositories also (eg. .github/ISSUE_TEMPLATE.md, GH workflow, LICENSE...)


provider "githubfile" {
  github_username = "antonbabenko"
  github_email    = "anton@antonbabenko.com"
}

resource "githubfile_file" "form3tech_oss_terraform_provider_githubfile_issue_template" {
  repository_owner = "antonbabenko"
  repository_name  = "tf-modules-test"
  branch           = ""
  path             = ".github/ISSUE_TEMPLATE.md"
  contents         = <<EOF
# Issue Type

- [ ] Bug report.
- [ ] Suggestion.

# Description!!!

<!-- Please provide a description of the issue. -->
EOF
}

//data "local_file" "this" {
//  filename = "files/file.txt"
//}
