terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.2.0"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "mongo" {
  name         = "mongo:latest"
  keep_locally = false
}

resource "docker_container" "mongo" {
  image = docker_image.mongo.image_id
  name  = var.container_name

  env = [
    "MONGO_INITDB_ROOT_USERNAME=${var.mongo_user}",
    "MONGO_INITDB_ROOT_PASSWORD=${var.mongo_password}",
    "MONGO_INITDB_DATABASE=${var.mongo_db}"
  ]

  ports {
    internal = 27017
    external = var.mongo_port
  }
}
