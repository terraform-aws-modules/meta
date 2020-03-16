variable "repository" {
  description = "Repository owner/name"
  type        = string
}

variable "branch" {
  description = "Branch name"
  type        = string
  default     = ""
}

variable "files_dir" {
  description = "Files directory (relative to this module)"
  type        = string
  default     = "files/"
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
