variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "postgres_container_terraform"
}

variable "postgres_password" {
  description = "Password for PostgreSQL"
  type        = string
  default     = "pgadmin"
}

variable "postgres_db" {
  description = "Name of the PostgreSQL database"
  type        = string
  default     = "terraform_db"
}

variable "postgres_port" {
  description = "External port for PostgreSQL"
  type        = string
  default     = "5433"
}
