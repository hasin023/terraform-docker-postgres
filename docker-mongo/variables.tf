variable "container_name" {
  description = "Value of the name for the Docker container"
  type        = string
  default     = "mongo_container_terraform"
}

variable "mongo_user" {
  description = "User for MongoDB"
  type        = string
  default     = "mongoadmin"
}

variable "mongo_password" {
  description = "Password for MongoDB"
  type        = string
  default     = "mongoadmin"
}

variable "mongo_db" {
  description = "Name of the Mongo database"
  type        = string
  default     = "terraform_db"
}

variable "mongo_port" {
  description = "External port for MongoDB"
  type        = string
  default     = "27019"
}
