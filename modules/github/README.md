# GitHub repositories

Settings and Files in GitHub repositories can be managed with this module.

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
| <a name="input_branch"></a> [branch](#input\_branch) | Branch name | `string` | `"master"` | no |
| <a name="input_dynamic_files"></a> [dynamic\_files](#input\_dynamic\_files) | Map of dynamic files to manage in repo (generated from templates) | `map(any)` | `{}` | no |
| <a name="input_files_dir"></a> [files\_dir](#input\_files\_dir) | Path to files directory | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Map of Github issue labels (`label => color` or `label => { color, description }`) | `any` | `{}` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository owner/name | `string` | n/a | yes |
| <a name="input_static_files"></a> [static\_files](#input\_static\_files) | Map of static files to manage in repo | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
