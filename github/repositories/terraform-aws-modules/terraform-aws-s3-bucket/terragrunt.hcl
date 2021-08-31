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

  labels = local.common_vars.inputs.labels

  static_files = local.common_vars.inputs.static_files

  ##############################
  # DO NOT EDIT BELOW THIS LINE
  ##############################

  # Files directory
  files_dir = local.common_vars.inputs.files_dir

  # Repository owner/name
  repository = join("/", slice(split("/", path_relative_to_include()), 1, 3))
}
