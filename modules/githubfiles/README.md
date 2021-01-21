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
| terraform | >= 0.12.23 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| branch | Branch name | `string` | `""` | no |
| dynamic\_files | Map of dynamic files to manage in repo (generated from templates) | `map(any)` | `{}` | no |
| files\_dir | Path to files directory | `string` | n/a | yes |
| repository | Repository owner/name | `string` | n/a | yes |
| static\_files | Map of static files to manage in repo | `map(any)` | `{}` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
