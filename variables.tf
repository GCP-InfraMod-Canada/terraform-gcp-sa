variable "sa_id" {
  description = "The service account ID. Changing this forces a new service account to be created"
}

variable "sa_name" {
  description = "The service account name."
}

variable "project_id" {
  description = "The ID of the project that the service account will be created in"
}

variable "sa_roles" {
  description = "A map containing roles to assign to the terraform SA that will be created"
  type        = list(string)
}
