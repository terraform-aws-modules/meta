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

    ".chglog/CHANGELOG.tpl.md" = {
      src  = ".chglog/CHANGELOG.tpl.md"
      dest = ".chglog/CHANGELOG.tpl.md"
    }

  }

  labels = {
    "breaking change"  = "836d0f"
    "bug"              = "d73a4a"
    "documentation"    = "0075ca"
    "enhancement"      = "a2eeef"
    "good first issue" = "7057ff"
    "help wanted"      = "008672"
    "needs triage"     = "f7f36d"
    "needs update"     = "feb64e"
    "on hold"          = "f9d0c4"
    "question"         = "d876e3"
    "stale"            = "ffffff"
    "upstream blocker" = "cdda25"
    "waiting response" = "790a87"
    "wip"              = "a5f7a7"
    "wontfix"          = "ffffff"
  }
}
