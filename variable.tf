variable "name" {
  description = "Base name for the infrastructure resources"
  type        = string
  default     = "aws-infra-k8s"
}

variable "vpc_name" {
  type    = string
  default = "aws-infra-k8s-vpc"
}

variable "public_subnet_name" {
  type    = string
  default = "aws-infra-k8s-public-subnet-1"
}

variable "private_subnet_name2" {
  type    = string
  default = "aws-infra-k8s-private-subnet-2"
}

variable "igw_name" {
  type    = string
  default = "aws-infra-k8s-igw"
}

variable "public_route_table_name" {
  type    = string
  default = "aws-infra-ass-public-route-table"
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "ssh_allowed_cidr" {
  description = "CIDR range allowed to connect to the instance over SSH"
  type        = string
  default     = "103.48.69.218/32"
}

variable "AMI_ID" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0f8a61b66d1accaee"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "key_name" {
  description = "Name of the existing EC2 key pair"
  type        = string
  default     = "k8s-cluster"
}

variable "bucket_name" {
  description = "Globally unique name for the S3 bucket"
  type        = string
  default     = "aws-infra-k8s-751148683-20261006"
}
