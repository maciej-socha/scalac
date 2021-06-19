output "public_connection_string" {
  description = "Public connection string"
  value       = "ssh -i ${module.ssh-key.key_name}.pem ec2-user@${module.ec2.public_ip}"
}