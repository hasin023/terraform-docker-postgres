output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.postgres.id
}

output "container_name" {
  description = "Name of the Docker container"
  value       = docker_container.postgres.name
}

output "connection_string" {
  description = "Connection string for PostgreSQL"
  value       = "postgres://postgres:${var.postgres_password}@127.0.0.1:${var.postgres_port}/${var.postgres_db}"
  sensitive   = true
}
