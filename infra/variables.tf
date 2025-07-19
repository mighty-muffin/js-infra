variable "resource_group_name" { default = "my-rg" }
variable "location"           { default = "eastus" }
variable "container_image"    { default = "ghcr.io/youruser/yourimage:tag" }
variable "container_app_name" { default = "my-container-app" }
variable "cloudflare_zone"    { default = "example.com" }
variable "custom_domain"      { default = "app.example.com" }
variable "cloudflare_api_token" {}