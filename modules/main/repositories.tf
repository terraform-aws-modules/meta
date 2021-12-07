locals {
  # Useful helpers
  # list_cmd = [for k in keys(var.repositories) : "mkdir \"${k}\""]
  # full_cmd   = join("\n", local.list_cmd)
  # full_repos = join("\n", keys(var.repositories))
}

###############
# Repositories
###############
resource "github_repository" "this" {
  for_each = var.repositories

  name          = each.key
  description   = lookup(each.value, "description", null)
  homepage_url  = lookup(each.value, "homepage_url", null)
  visibility    = lookup(each.value, "visibility", "public")
  has_issues    = lookup(each.value, "has_issues", true)
  has_projects  = lookup(each.value, "has_projects", false)
  has_wiki      = lookup(each.value, "has_wiki", false)
  has_downloads = lookup(each.value, "has_downloads", true)

  allow_squash_merge = lookup(each.value, "allow_squash_merge", true)
  allow_merge_commit = lookup(each.value, "allow_merge_commit", true) # merge commits are required for githubfile Terraform provider only (not for humans)
  allow_rebase_merge = lookup(each.value, "allow_rebase_merge", false)

  auto_init = lookup(each.value, "auto_init", false) # set to true to be able to manage branch protection as code automaticaly when creating a repo

  topics = sort(lookup(each.value, "topics", []))
}

#####################
# Branch protections
#####################
resource "github_branch_protection" "this" {
  for_each = var.branch_protections

  repository_id = github_repository.this[each.key].node_id
  pattern       = "master"

  enforce_admins         = lookup(each.value, "enforce_admins", false)
  require_signed_commits = lookup(each.value, "require_signed_commits", false)

  dynamic "required_status_checks" {
    for_each = [lookup(each.value, "required_status_checks", {})]

    content {
      strict   = lookup(required_status_checks.value, "strict", true)
      contexts = lookup(required_status_checks.value, "contexts", [])
    }
  }

  dynamic "required_pull_request_reviews" {
    for_each = [lookup(each.value, "required_pull_request_reviews", {})]

    content {
      dismiss_stale_reviews           = lookup(required_pull_request_reviews.value, "dismiss_stale_reviews", false)
      restrict_dismissals             = lookup(required_pull_request_reviews.value, "restrict_dismissals", null)
      dismissal_restrictions          = lookup(required_pull_request_reviews.value, "dismissal_restrictions", null)
      require_code_owner_reviews      = lookup(required_pull_request_reviews.value, "require_code_owner_reviews", false)
      required_approving_review_count = lookup(required_pull_request_reviews.value, "required_approving_review_count", null)
    }
  }
}
