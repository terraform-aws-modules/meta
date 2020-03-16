# Meta-configurations for [terraform-aws-modules organization](https://github.com/terraform-aws-modules)

This repository contains Terraform configurations for all Terraform modules managed as part of [terraform-aws-modules](https://github.com/terraform-aws-modules) organization on GitHub.


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

Additionally, environment variable `GITHUB_TOKEN` should be set for the GitHub organization you manage (`terraform-aws-modules`).

## How to run this?

Prepare environment variables:

    $ export GITHUB_TOKEN="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

Manage all together (slowest):

    $ cd github
    $ terragrunt plan-all    # <- it is a good idea to see changes :)
    $ terragrunt apply-all

Only repositories and teams permissions:

    $ cd github/main-github
    $ terragrunt apply

Manage files in all repositories:

    $ cd github/repositories
    $ terragrunt plan-all    # <- it is a good idea to see changes :)
    $ terragrunt apply-all

Only files in one repository (eg, `terraform-aws-modules/terraform-aws-vpc`:

    $ cd github/repositories/terraform-aws-modules/terraform-aws-vpc
    $ terragrunt apply


## Ideas for later

- Use [SecretHub](https://www.secrethub.io/) for storing secret Github Token
- Rotate GitHub Token ([example 1](https://gist.github.com/StevenACoffman/f0c084b428977430d2baacd0263c3563))
- Consider adding MFA
- Prevent making changes in files managed by this repo in repositories (tell users during PR checks)


## Authors

This repository is managed by [Anton Babenko](https://github.com/antonbabenko).


## License

Apache 2 Licensed. See LICENSE for full details.
