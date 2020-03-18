# Meta files for [terraform-aws-modules organization](https://github.com/terraform-aws-modules)

This repository contains Terraform configurations for all Terraform modules managed as part of [terraform-aws-modules](https://github.com/terraform-aws-modules) organization on GitHub.


## What exactly is managed here?

1. [GitHub resources](https://github.com/terraform-aws-modules/meta/tree/master/github/main):
    - Repositories
    - Branch protections (status checks, pull-request reviews, restrictions)
    - Teams
    - Team repositories
    - Team memberships
    - Organization memberships (admins and members)

2. [Common files in GitHub repositories](https://github.com/terraform-aws-modules/meta/tree/master/github/repositories):
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

### Manage GitHub resources (repositories, teams, members):

    $ cd github/main
    $ terragrunt apply

### Manage files in one repository (eg, `terraform-aws-modules/terraform-aws-vpc`):

    $ cd github/repositories/terraform-aws-modules/terraform-aws-vpc
    $ terragrunt apply

### Manage files in all repositories (not supported):

Currently it is not well implemented here yet. Due to a large amount of API calls to GitHub and inability of terragrunt to limit execution to a single process.
 
    $ cd github/repositories
    $ terragrunt plan-all    # <- it is a good idea to see changes :)
    $ terragrunt apply-all

## Ideas for later

- [x] Use [SecretHub](https://www.secrethub.io/) for storing secret Github Token
- [ ] Prevent making changes in files managed by this repo in repositories (tell users during PR checks)
- [ ] Finish running code in this repo - `terraform-aws-modules/terraform-aws-eks`
- [ ] Verify if GitHub is actually using the files in "ISSUE_TEMPLATE" directory from `.github` repository. Verify and update if necessary.


## Authors

This repository is managed by [Anton Babenko](https://github.com/antonbabenko).


## License

Apache 2 Licensed. See LICENSE for full details.
