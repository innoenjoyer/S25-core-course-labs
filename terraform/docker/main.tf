terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

resource "docker_container" "app_container" {
  image = var.app_docker_image
  name  = var.app_container_name
  ports {
    internal = var.app_internal_port
    external = var.app_external_port
  }
}
