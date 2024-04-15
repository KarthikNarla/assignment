variable "account_name" {
  type        = string
  description = "name of the account"
  default     = "karthiknarla"
}

variable "account_email" {
  type        = string
  description = "Email of responsible person"
  default     = "karthiknarla22@gmail.com"
}

variable "region" {
  type        = string
  description = "The AWS region where to deploy the cluster."

  validation {
    condition     = contains(["eu-north-1", "eu-west-1", "eu-central-1"], var.region)
    error_message = "The only supported regions are 'eu-north-1', 'eu-west-1' and 'eu-central-1'."
  }
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR range"
  default     = "192.0.2.0/24"
}

variable "bucket_name" {
  type        = string
  description = "Name of the bucket"
  default     = "akjabsdkhsad"
}


variable "subnet_id" {
  type        = string
  description = "Name of the subnet"
  default     = "subnet-123213"
}

variable "security_group_id" {
  type        = list(string)
  description = "Security group id"
  default     = ["sg-123213"]
}

variable "ami_id" {
  type        = string
  description = "ID of AMI"
  default     = "ami-03a115bbd6928e698"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
  default     = "t2.micro"
}



