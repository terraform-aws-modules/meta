terraform {
  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()

    env_vars = {
      GITHUB_TOKEN = trimspace(run_cmd("--terragrunt-quiet", "secrethub", "read", "betajob/terraform-aws-modules/github/token"))
      #      GITHUB_OWNER = "terraform-modules"
      GITHUB_OWNER = "terraform-aws-modules"
    }
  }

  #  extra_arguments "disable_input" {
  #    commands  = get_terraform_commands_that_need_input()
  #    arguments = ["-input=false"]
  #  }
}

remote_state {
  backend      = "s3"
  disable_init = tobool(get_env("TERRAGRUNT_DISABLE_INIT", "false"))

  generate = {
    path      = "_backend.tf"
    if_exists = "overwrite"
  }

  config = {
    encrypt        = true
    region         = "eu-west-1"
    key            = format("%s/terraform.tfstate", path_relative_to_include())
    bucket         = format("terraform-aws-modules-meta-states-%s", get_aws_account_id())
    dynamodb_table = format("terraform-aws-modules-meta-locks-%s", get_aws_account_id())

    skip_metadata_api_check     = true
    skip_credentials_validation = true
  }
}

generate "main_providers" {
  path      = "main_providers.tf"
  if_exists = "overwrite"
  contents  = <<EOF
provider "github" {}
EOF
}
