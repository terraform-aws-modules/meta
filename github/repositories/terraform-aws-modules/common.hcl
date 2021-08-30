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
    "breaking change" = {
      color       = "d66d0a"
      description = "Breaking change features"
    }

    "bug" = {
      color       = "d73a4a"
      description = "Something isn't working"
    }

    "documentation" = {
      color       = "0075ca"
      description = "Improvements or additions to documentation"
    }

    "enhancement" = {
      color       = "a2eeef"
      description = "New feature or request"
    }

    "good first issue" = {
      color       = "7057ff"
      description = "Good for newcomers"
    }

    "help wanted" = {
      color       = "008672"
      description = "Extra attention is needed"
    }

    "on hold" = {
      color       = "f9d0c4"
      description = "Needs further work or discussion"
    }

    "question" = {
      color       = "d876e3"
      description = "General question"
    }

    "wip" = {
      color       = "a5f7a7"
      description = "Work in progress"
    }

    "wontfix" = {
      color       = "ffffff"
      description = "This will not be worked on"
    }

    "needs triage" = {
      color       = "f47a99"
      description = "Needs help with triage"
    }

    "needs update" = {
      color       = "cfd3d7"
      description = "Needs updates"
    }

    "upstream blocker" = {
      color       = "804bfc"
      description = "Blocked by upstream provider bug"
    }

    "waiting response" = {
      color       = "790A87"
      description = "Waiting response"
    }

    "stale" = {
      color       = "ffffff"
      description = ""
    }

  }
}
