terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
  backend "s3" {}
}

provider "docker" {
  host         = "ssh://ubuntu@${var.public_ip}:22"
  key_material = var.secret_key
}
