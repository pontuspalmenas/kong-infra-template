module "konnect_resources" {
  source = "./konnect"
  pat = var.konnect_pat
  region = var.konnect_region
}

module "aws" {
  source = "./aws"
  region = var.aws_region
  owner = var.owner
  project = var.project
}