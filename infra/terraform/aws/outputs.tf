output "account_id" {
  description = "AWS account ID used by this deployment."
  value       = data.aws_caller_identity.current.account_id
}

output "app_url" {
  description = "Public TimeLock API URL."
  value       = "https://${aws_apprunner_service.api.service_url}"
}

output "ecr_repository_name" {
  description = "ECR repository name."
  value       = aws_ecr_repository.app.name
}

output "ecr_repository_url" {
  description = "ECR repository URL."
  value       = aws_ecr_repository.app.repository_url
}

output "apprunner_service_arn" {
  description = "AWS App Runner service ARN."
  value       = aws_apprunner_service.api.arn
}

output "postgres_endpoint" {
  description = "Private RDS PostgreSQL endpoint."
  value       = aws_db_instance.postgres.endpoint
}
