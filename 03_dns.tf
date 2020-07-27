# Creamos un dominio nuevo

resource "digitalocean_domain" "delyqueso" {
  name = "delyqueso.com"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.delyqueso.name}"
  type   = "A"
  name   = "delyqueso"
  ttl    = "40"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}

