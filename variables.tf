variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-04e08e36e17a21b56"
}
variable "aws_region" {
  description = "The AWS region where the resources will be created"
  type        = string
  default     = "us-west-2"
}

variable "vm_name" {
  description = "Name of the Azure VM"
  type        = string
  default     = "ravi-test-vm"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "East US"
}
variable "admin_username" {
  default = "raviadmin"
}
variable "admin_password" {
  default = "P@ssword1234!"
}
variable "oidc_role_arn" {
  type = string
}