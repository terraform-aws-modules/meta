# GitHub repositories and static files

Settings and Files in GitHub repositories can be managed with this module.

## Static files flow

1. Read existing files and find if there should be any changes
2. If there are changes:
   1. Make branch => commit => open PR
   2. Merge PR (outside of this repo, manually)
   3. Run `terragrunt state rm` to delete information about these files and PR from the state-file.

```
terragrunt apply
# terragrunt state list -id=github_repository_file.updates
 -id=github_repository_pull_request.updates
terragrunt state rm 'github_repository_file.updates' 'github_repository_pull_request.updates'
```


## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_issue_label.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/issue_label) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_labels"></a> [labels](#input\_labels) | Map of Github issue labels (`label => color` or `label => { color, description }`) | `any` | `{}` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository owner/name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
