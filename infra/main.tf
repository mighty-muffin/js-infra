module "azure_container_app" {
  source              = "./modules/azure_container_app"
  resource_group_name = var.resource_group_name
  location            = var.location
  container_image     = var.container_image
  container_app_name  = var.container_app_name
}

module "cloudflare_dns" {
  source             = "./modules/cloudflare_dns"
  cloudflare_zone    = var.cloudflare_zone
  custom_domain      = var.custom_domain
  cloudflare_api_token = var.cloudflare_api_token
  azure_fqdn         = module.azure_container_app.fqdn
}