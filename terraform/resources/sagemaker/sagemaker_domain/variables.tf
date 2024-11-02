variable "owner" {
  description = "Owner of terraform objects. It will be used in custom tags"
  default = ""
}

variable "environment" {
  description = "The environment of working"
  default = ""
}

variable "identifier" {
  description = "Identifier that describe this resource"
  default = ""
}

variable "vpc_id" {
  type = string
  description = "The VPC  ID"
}

variable "subnet_ids" {
  type = list(string)
  description = "The VPC subnet IDs"
}

variable "security_groups" {
  type = list(string)
  description = "The security groups."
}

variable "role_arn" {
  description = "The ARN of the role"
}

variable "sharing_s3" {
  description = "The Amazon S3 bucket used to save the notebook cell output"
}

variable "common_tags" {
  description = "Common tags among whole infrastructure"
  type        = map(string)
}