terraform {
  required_version = ">= 1.0"

  required_providers {
    konnect = {
      source  = "kong/konnect"
    }

    konnect-beta = {
      source  = "kong/konnect-beta"
      version = "0.2.1"
    }
  }
}