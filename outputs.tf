
output "app_security_group_id" {
  value       = aws_security_group.app.id
  description = "default application security group id"
}

output "db_security_group_id" {
  value       = aws_security_group.db.id
  description = "default db security group id"
}

output "web_security_group_id" {
  value       = aws_security_group.web.id
  description = "default web security group id"
}