output "db_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "db_username" {
  value = aws_db_instance.postgres.username
  sensitive = true
}

output "db_password" {
  value = aws_db_instance.postgres.password
  sensitive = true
}

output "db_name" {
  value = aws_db_instance.postgres
  sensitive = true
}
