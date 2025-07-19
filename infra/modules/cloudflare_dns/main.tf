provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

data "cloudflare_zone" "main" {
  name = var.cloudflare_zone
}

resource "cloudflare_record" "custom_domain" {
  zone_id = data.cloudflare_zone.main.id
  name    = var.custom_domain
  type    = "CNAME"
  value   = var.azure_fqdn
  proxied = true
}