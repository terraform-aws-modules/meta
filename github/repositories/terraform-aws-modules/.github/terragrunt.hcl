terraform {
  source = "${path_relative_from_include()}/../modules/github"
}

include {
  path = find_in_parent_folders()
}

inputs = {

  static_files = {

    "CODE_OF_CONDUCT.md" = {
      src  = "CODE_OF_CONDUCT.md"
      dest = "CODE_OF_CONDUCT.md"
    }

    "CONTRIBUTING.md" = {
      src  = "CONTRIBUTING.md"
      dest = "CONTRIBUTING.md"
    }

    "FUNDING.yml" = {
      src  = "FUNDING.yml"
      dest = "FUNDING.yml"
    }

    "PULL_REQUEST_TEMPLATE.md" = {
      src  = "PULL_REQUEST_TEMPLATE.md"
      dest = "PULL_REQUEST_TEMPLATE.md"
    }

    "SECURITY.md" = {
      src  = "SECURITY.md"
      dest = "SECURITY.md"
    }

    "ISSUE_TEMPLATE/bug_report.md" = {
      src  = "ISSUE_TEMPLATE/bug_report.md"
      dest = "ISSUE_TEMPLATE/bug_report.md"
    }

    "ISSUE_TEMPLATE/feature_request.md" = {
      src  = "ISSUE_TEMPLATE/feature_request.md"
      dest = "ISSUE_TEMPLATE/feature_request.md"
    }

    "ISSUE_TEMPLATE/config.yml" = {
      src  = "ISSUE_TEMPLATE/config.yml"
      dest = "ISSUE_TEMPLATE/config.yml"
    }

    "stale.yml" = {
      src  = "stale.yml"
      dest = "stale.yml"
    }

  }

  ##############################
  # DO NOT EDIT BELOW THIS LINE
  ##############################

  # Files directory
  files_dir = "${get_parent_terragrunt_dir()}/../files/dot-github/"

  # Repository owner/name
  repository = join("/", slice(split("/", path_relative_to_include()), 1, 3))
}
