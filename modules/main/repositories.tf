locals {
  /* Useful helpers */
  list_cmd   = [for k in keys(var.repositories) : "mkdir \"${k}\""]
  full_cmd   = join("\n", local.list_cmd)
  full_repos = join("\n", keys(var.repositories))
}

###############
# Repositories
###############
resource "github_repository" "this" {
  for_each = var.repositories

  name          = each.key
  description   = lookup(each.value, "description", null)
  homepage_url  = lookup(each.value, "homepage_url", null)
  private       = lookup(each.value, "private", false)
  has_issues    = lookup(each.value, "has_issues", true)
  has_projects  = lookup(each.value, "has_projects", false)
  has_wiki      = lookup(each.value, "has_wiki", false)
  has_downloads = lookup(each.value, "has_downloads", true)

  allow_squash_merge = lookup(each.value, "allow_squash_merge", true)
  allow_merge_commit = lookup(each.value, "allow_merge_commit", true)
  allow_rebase_merge = lookup(each.value, "allow_rebase_merge", true)

  auto_init = lookup(each.value, "auto_init", true) # set to true to be able to manage branch protection as code automaticaly

  topics = sort(lookup(each.value, "topics", []))
}

#####################
# Branch protections
#####################
resource "github_branch_protection" "this" {
  for_each = var.branch_protections

  repository = github_repository.this[split("/", each.key)[0]].name
  branch     = split("/", each.key)[1]

  enforce_admins         = lookup(each.value, "enforce_admins", false)
  require_signed_commits = lookup(each.value, "require_signed_commits", false)

  required_status_checks {
    strict   = lookup(each.value, "required_status_checks_strict", null)
    contexts = lookup(each.value, "required_status_checks_context", null)
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = lookup(each.value, "required_pull_request_reviews_dismiss_stale_reviews", false)
    dismissal_users                 = lookup(each.value, "required_pull_request_reviews_dismissal_users", null)
    dismissal_teams                 = lookup(each.value, "required_pull_request_reviews_dismissal_teams", null)
    require_code_owner_reviews      = lookup(each.value, "required_pull_request_reviews_require_code_owner_reviews", false)
    required_approving_review_count = lookup(each.value, "required_pull_request_reviews_required_approving_review_count", null)
  }

  restrictions {
    users = lookup(each.value, "restrictions_users", null)
    teams = lookup(each.value, "restrictions_teams", null)
  }
}
