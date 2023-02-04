variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
}
variable "region" {
  type = string
}
variable "private_subnet01_netnum" {
  type = string
}
variable "public_subnet01_netnum" {
  type = string
}
variable "cluster_name" {
  type = string
}
variable "ami" {
  description = "Ubuntu 18.04.7 AMI"
  default = "ami-0653ec2a12946c040"
}
variable "master_instance_type" {
  type = string
}
variable "worker_instance_type" {
  type = string
}
variable "nodes_max_size" {
  type = number
}
variable "nodes_min_size" {
  type = number
}
variable "key_path" {
  description = "SSH Public Key path"
  default = "/home/ubuntu/.ssh/id_rsa.pub"
}
