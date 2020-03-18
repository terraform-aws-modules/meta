variable "files_dir" {
  description = "Path to files directory"
  type        = string
}

variable "repository" {
  description = "Repository owner/name"
  type        = string
}

variable "branch" {
  description = "Branch name"
  type        = string
  default     = ""
}

variable "static_files" {
  description = "Map of static files to manage in repo"
  type        = map(any)
  default     = {}
}

variable "dynamic_files" {
  description = "Map of dynamic files to manage in repo (generated from templates)"
  type        = map(any)
  default     = {}
}
