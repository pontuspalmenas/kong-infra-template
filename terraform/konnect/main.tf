provider "konnect" {
  personal_access_token = var.pat
  server_url            = "https://${var.region}.api.konghq.com"
}