#
# Exportamos nuestra key SSH

variable "MY_ID_RSA" {
  type = string  
}

resource "digitalocean_ssh_key" "do_deployer" {
  name       = "deployer-key"
  public_key = var.MY_ID_RSA
}

