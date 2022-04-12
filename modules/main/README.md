# GitHub resources

Configuration of all Github resources (repositories, teams, memberships, etc) is managed by this module.

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
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.23 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.23 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch_protection.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_membership.admins](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_membership.members](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_team.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team) | resource |
| [github_team_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_membership) | resource |
| [github_team_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admins"></a> [admins](#input\_admins) | List of admin usernames | `list(string)` | `[]` | no |
| <a name="input_branch_protections"></a> [branch\_protections](#input\_branch\_protections) | Map of team memberships to manage | `any` | `{}` | no |
| <a name="input_members"></a> [members](#input\_members) | List of member usernames | `list(string)` | `[]` | no |
| <a name="input_repositories"></a> [repositories](#input\_repositories) | Map of repositories to manage | `any` | `{}` | no |
| <a name="input_team_memberships"></a> [team\_memberships](#input\_team\_memberships) | Map of team memberships to manage | `map(string)` | `{}` | no |
| <a name="input_team_repositories"></a> [team\_repositories](#input\_team\_repositories) | Map of team repositories to manage | `map(string)` | `{}` | no |
| <a name="input_teams"></a> [teams](#input\_teams) | Map of teams to manage | `any` | `{}` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
