inputs = {
  files_dir = "${get_terragrunt_dir()}/../../../files/terraform-modules/"

  static_files = {

    ".editorconfig" = {
      src  = "editorconfig"
      dest = ".editorconfig"
    }

    ".gitignore" = {
      src  = "gitignore"
      dest = ".gitignore"
    }

    ".pre-commit-config.yaml" = {
      src  = "pre-commit-config.yaml"
      dest = ".pre-commit-config.yaml"
    }

    "LICENSE" = {
      src  = "LICENSE"
      dest = "LICENSE"
    }

    "Makefile" = {
      src  = "Makefile"
      dest = "Makefile"
    }

  }
}
