variable "instance_type" {
  description = "AWS instance type"
  type        = string
  default     = "t3.micro"
}

variable "AMI_ID" {
  description = "AMI ID for the instance"
  type        = string
  default     = "ami-0f8a61b66d1accaee"
}

variable "name" {
  description = "Name tag for the instance"
  type        = string
  default     = "web_server"
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string

}

variable "subnet_id" {
  description = "Subnet in which to launch the instance"
  type        = string
}

variable "security_group_ids" {
  description = "Security groups to attach to the instance"
  type        = list(string)
}
