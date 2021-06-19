output "vpc" {
  value = module.vpc
}

output "sg_ssh" {
  value = aws_security_group.allow_ssh.id
}

output "sg_http" {
  value = aws_security_group.allow_http.id
}

output "sg_jenkins" {
  value = aws_security_group.allow_jenkins.id
}