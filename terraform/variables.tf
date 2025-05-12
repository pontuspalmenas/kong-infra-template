variable "konnect_pat" {
  description = "Konnect Personal Access Token"
  type = string
  sensitive = true
}

variable "konnect_region" {
  description = "Konnect Default Region"
  type = string
}

variable "owner" {
  description = "Owner of the resource"
  type = string
}

variable "project" {
  description = "The project name, used for resource names and tags"
  type = string
}

variable "aws_region" {
  description = "AWS region where the resources are deployed"
  type = string
}