---
name: Bug report
about: Create a report to help us improve

---

## Description

Please provide a clear and concise description of the issue you are encountering, your current setup, and what steps led up to the issue. If you can provide a reproduction, that will help tremendously.

## ⚠️ Note

Before you submit an issue, please perform the following first:

1. Remove the local `.terraform` directory (! ONLY if state is stored remotely, which hopefully you are following that best practice!): `rm -rf .terraform/`
2. Re-initialize the project root to pull down modules: `terraform init`
3. Re-attempt your terraform plan or apply and check if the issue still persists

## Versions
<!-- REQUIRED -->
 - Terraform:
<!-- Execute terraform -version -->
 - Provider(s):
<!-- Execute: terraform providers -version -->
 - Module:

## Reproduction
<!-- REQUIRED -->
Steps to reproduce the behavior:
<!-- Are you using workspaces? -->
<!-- Have you cleared the local cache (see Notice section above)? -->
<!-- List steps in order that led up to the issue you encountered -->

### Code Snippet to Reproduce
<!-- Optional but very helpful -->

## Expected behavior
<!-- A clear and concise description of what you expected to happen -->

## Actual behavior
<!-- A clear and concise description of what actually happened -->

### Terminal Output Screenshot(s)
<!-- Optional but helpful -->

## Additional context
<!-- Add any other context about the problem here -->
