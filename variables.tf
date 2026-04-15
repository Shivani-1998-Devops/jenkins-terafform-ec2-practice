variable "region" {
  default = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "env" {
  description = "Environment (dev/prod)"
}

variable "key_name" {
  description = "SSH key name"
}