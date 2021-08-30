terraform {
  source = "${path_relative_from_include()}/../modules/github"
}

include {
  path = find_in_parent_folders()
}

locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl"))
}

inputs = {

  static_files = merge(
    local.common_vars.inputs.static_files,
    {

      # ignore some files, for example
      ".editorconfig" = null

    }
  )

  ##############################
  # DO NOT EDIT BELOW THIS LINE
  ##############################

  # Files directory
  files_dir = local.common_vars.inputs.files_dir

  # Repository owner/name
  repository = join("/", slice(split("/", path_relative_to_include()), 1, 3))
}
