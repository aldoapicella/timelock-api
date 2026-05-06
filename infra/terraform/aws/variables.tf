variable "aws_region" {
  description = "AWS region where resources will be deployed."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming and tags."
  type        = string
  default     = "timelock-api"
}

variable "environment" {
  description = "Environment name used for resource naming and tags."
  type        = string
  default     = "prod"
}

variable "image_tag" {
  description = "Container image tag to deploy from ECR."
  type        = string
  default     = "latest"
}

variable "db_name" {
  description = "PostgreSQL database name."
  type        = string
  default     = "timelock"
}

variable "db_username" {
  description = "PostgreSQL administrator username."
  type        = string
  default     = "timelockadmin"
}

variable "db_password" {
  description = "PostgreSQL administrator password."
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS PostgreSQL instance class."
  type        = string
  default     = "db.t4g.micro"
}

variable "db_allocated_storage" {
  description = "Allocated RDS storage in GiB."
  type        = number
  default     = 20
}

variable "app_cpu" {
  description = "AWS App Runner CPU size."
  type        = string
  default     = "0.25 vCPU"
}

variable "app_memory" {
  description = "AWS App Runner memory size."
  type        = string
  default     = "0.5 GB"
}
