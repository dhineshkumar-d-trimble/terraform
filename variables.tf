variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
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
  description = "The ending port for ingress rules"
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

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "backend_bucket" {
  description = "The name of the S3 bucket for the backend"
  type        = string
}

variable "backend_key" {
  description = "The key for the state file in the backend bucket"
  type        = string
}

variable "backend_region" {
  description = "The region of the backend bucket"
  type        = string
  default     = "ap-south-1"
}
