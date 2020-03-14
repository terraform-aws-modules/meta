# Meta-configurations for [terraform-aws-modules organization](https://github.com/terraform-aws-modules)

## WIP! WIP! WIP! WIP! WIP! WIP! WIP! WIP! WIP! WIP!

This repository contains "everything-as-code" configuration for all Terraform modules managed as part of [terraform-aws-modules](https://github.com/terraform-aws-modules) organization on GitHub.


## What exactly is managed here?

1. GitHub resources:
    - Repositories
    - Branch protections (status checks, pull-request reviews, restrictions)
    - Teams
    - Team repositories
    - Team memberships
    - Organization memberships (admins and members)

2. todo - Common files in GitHub repositories:
    - .pre-commit-hooks.yml
    - .github issues and PR templates
    - CODEOWNERS
    - Makefile
    - GitHub Actions
    - LICENSE
    - README.md
    - ...


## Why here and not in each individual repository?

It is hard to keep things identical, predictable, and with high-quality, while focusing on maintaining Terraform modules.

Individual Terraform modules repository should contain only Terraform configurations and have standard procedures for releasing, updating, testing, documenting defined in a central place (this repo!)


## Pre-requirements

- [Terraform 0.12](https://github.com/hashicorp/terraform)
- [Terraform Docs](https://github.com/segmentio/terraform-docs)
- [pre-commit hooks](http://pre-commit.com)

- Custom Terraform providers (you need to install it yourself):
  - [githubfile](https://github.com/form3tech-oss/terraform-provider-githubfile)

If you are using Mac, you can install all dependencies using Homebrew:

    $ brew install terraform terraform-docs pre-commit

Additionally, environment variable `GITHUB_TOKEN` should be set for the GitHub organization you manage.


## Ideas for later

- Use [SecretHub](https://www.secrethub.io/) for storing secret Github Token
- Consider adding MFA
- Prevent making changes in files managed by this repo in repositories (tell users during PR checks)


## Authors

This repository is managed by [Anton Babenko](https://github.com/antonbabenko).


## License

Apache 2 Licensed. See LICENSE for full details.
