variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Azure resource group name."
  type        = string
  default     = "rg-timelock-api"
}

variable "project_name" {
  description = "Project name used for resource naming and tags."
  type        = string
  default     = "timelock"
}

variable "environment" {
  description = "Environment name used for resource naming and tags."
  type        = string
  default     = "prod"
}

variable "image_name" {
  description = "Container image repository name."
  type        = string
  default     = "timelock-api"
}

variable "image_tag" {
  description = "Container image tag deployed by App Service."
  type        = string
  default     = "latest"
}

variable "postgres_admin_user" {
  description = "PostgreSQL administrator username."
  type        = string
  default     = "timelockadmin"
}

variable "postgres_admin_password" {
  description = "PostgreSQL administrator password."
  type        = string
  sensitive   = true
}

variable "postgres_database_name" {
  description = "PostgreSQL database name."
  type        = string
  default     = "timelock"
}
