output "instance_id" {
  description = "ID of the created instance"
  value       = aws_instance.common.id
  sensitive   = true
}
