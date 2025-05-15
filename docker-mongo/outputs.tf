output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.mongo.id
}

output "container_name" {
  description = "Name of the Docker container"
  value       = docker_container.mongo.name
}

output "connection_string" {
  description = "Connection string for MongoDB"
  value       = "mongodb://${var.mongo_user}:${var.mongo_password}@127.0.0.1:${var.mongo_port}"
  sensitive   = true
}
