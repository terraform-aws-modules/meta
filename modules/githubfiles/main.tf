terraform {
  required_version = "~> 0.12.23"

  required_providers {
    githubfile = "~> 1.1"
  }
}

locals {
  clean_static_files = { for k, v in var.static_files : k => v if v != null }
}

resource "githubfile_file" "static" {
  for_each = local.clean_static_files

  repository_owner = split("/", var.repository)[0]
  repository_name  = split("/", var.repository)[1]
  branch           = var.branch
  path             = lookup(each.value, "dest")
  contents         = file("${var.files_dir}${lookup(each.value, "src")}")
}
