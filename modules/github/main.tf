terraform {
  required_version = "~> 1.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

# locals {
#   clean_static_files = { for k, v in var.static_files : k => v if v != null }
# }

# resource "githubfile_file" "static" {
#   for_each = local.clean_static_files

#   repository_owner = split("/", var.repository)[0]
#   repository_name  = split("/", var.repository)[1]
#   branch           = var.branch
#   path             = lookup(each.value, "dest")
#   contents         = file("${var.files_dir}${lookup(each.value, "src")}")
# }

resource "github_issue_label" "this" {
  for_each = var.labels

  repository  = split("/", var.repository)[1]
  name        = each.key
  color       = lower(trimprefix(try(each.value.color, each.value), "#"))
  description = try(each.value.description, null)
}
