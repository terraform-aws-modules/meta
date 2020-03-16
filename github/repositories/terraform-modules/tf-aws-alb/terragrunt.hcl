terraform {
  source = "${path_relative_from_include()}/../modules/githubfiles"
}

include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../../../main"]
}

locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
}

inputs = {

  static_files = merge(
    local.common_vars.inputs.static_files,
    {

      # ignore this file, for example
      ".editorconfig" = null

    }
  )

  # Repository owner/name
  repository = join("/", slice(split("/", path_relative_to_include()), 1, 3))
}
