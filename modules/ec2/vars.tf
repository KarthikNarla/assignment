variable "subnet_id" {
  type        = string
  description = "Subnet ID"
}

variable "security_group_id" {
  type        = list(string)
  description = "Security group id"
}

variable "ami_id" {
  type        = string
  description = "ID of AMI"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}
