variable "aws_region" {
  description = "AWS region to deploy in"
  type        = string
  default     = "us-east-1"
}

variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "assume_service" {
  description = "The service that can assume this role (e.g., ec2.amazonaws.com)"
  type        = string
}

variable "policy_arn" {
  description = "ARN of the IAM policy to attach"
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
}