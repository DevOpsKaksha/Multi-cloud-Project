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