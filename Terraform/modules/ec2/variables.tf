variable "namespace" {
  type = string
}

variable "vpc" {
  type = any
}

variable key_name {
  type = string
}

variable "sg_ssh_id" {
  type = any
}

variable "sg_http_id" {
  type = any
}

variable "sg_jenkins_id" {
  type = any
}