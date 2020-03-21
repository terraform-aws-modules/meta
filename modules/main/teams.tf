########
# Teams
########
resource "github_team" "this" {
  for_each = var.teams

  name        = each.key
  description = lookup(each.value, "description", null)
  privacy     = lookup(each.value, "privacy", "secret")
}

###################
# Team memberships
###################
resource "github_team_membership" "this" {
  for_each = var.team_memberships

  team_id  = github_team.this[split("/", each.key)[0]].id
  username = split("/", each.key)[1]
  role     = each.value
}

####################
# Team repositories
####################
resource "github_team_repository" "this" {
  for_each = var.team_repositories

  team_id    = github_team.this[split("/", each.key)[0]].id
  repository = github_repository.this[split("/", each.key)[1]].name
  permission = each.value
}

##################################
# Membership - admins and members
##################################
resource "github_membership" "admins" {
  for_each = toset(var.admins)

  username = each.key
  role     = "admin"
}

resource "github_membership" "members" {
  for_each = toset(var.members)

  username = each.key
  role     = "member"
}
