variable "owner" {
  type = string
  description = "The contact person for this resource"
}

variable "project" {
  type = string
  description = "The project name, used for resource names and tags"
}

variable "region" {
  description = "AWS region where the resources are deployed"
  type = string
}