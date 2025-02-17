variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
}

variable "ingress_from_port" {
  description = "The starting port for ingress rules"
  type        = number
}

variable "ingress_to_port" {
  description = "The port for ingress rules"
  type        = number
}

variable "ingress_protocol" {
  description = "The protocol for ingress rules"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks for ingress rules"
  type        = list(string)
}
