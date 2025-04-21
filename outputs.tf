output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.postgres.id
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.postgres.id
}

output "connection_string" {
  description = "Connection string for PostgreSQL"
  value       = "postgres://postgres:${var.postgres_password}@127.0.0.1:${var.postgres_port}/${var.postgres_db}"
  sensitive   = false
}
