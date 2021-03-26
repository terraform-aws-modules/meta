# Files in GitHub repositories

Files in GitHub repositories can be managed with this module.

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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.23 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branch"></a> [branch](#input\_branch) | Branch name | `string` | `""` | no |
| <a name="input_dynamic_files"></a> [dynamic\_files](#input\_dynamic\_files) | Map of dynamic files to manage in repo (generated from templates) | `map(any)` | `{}` | no |
| <a name="input_files_dir"></a> [files\_dir](#input\_files\_dir) | Path to files directory | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository owner/name | `string` | n/a | yes |
| <a name="input_static_files"></a> [static\_files](#input\_static\_files) | Map of static files to manage in repo | `map(any)` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
