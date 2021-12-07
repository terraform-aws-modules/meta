variable "repositories" {
  description = "Map of repositories to manage"
  type        = any
  default     = {}
}

variable "teams" {
  description = "Map of teams to manage"
  type        = any
  default     = {}

  # validation {
  #   condition     = !contains([for v in var.teams : contains(["secret", "closed"], lookup(v, "privacy", "secret"))], false)
  #   error_message = "The teams privacy should be only 'secret' or 'closed'. Default is 'secret'."
  # }
}
variable "team_memberships" {
  description = "Map of team memberships to manage"
  type        = map(string)
  default     = {}
}

variable "team_repositories" {
  description = "Map of team repositories to manage"
  # key = team-name/repo-name
  # value = permission (described here - https://help.github.com/articles/repository-permission-levels-for-an-organization )
  type    = map(string)
  default = {}
}

variable "branch_protections" {
  description = "Map of team memberships to manage"

  # key = team-name/repo-name
  type    = any
  default = {}
}

variable "admins" {
  description = "List of admin usernames"
  type        = list(string)
  default     = []
}

variable "members" {
  description = "List of member usernames"
  type        = list(string)
  default     = []
}
