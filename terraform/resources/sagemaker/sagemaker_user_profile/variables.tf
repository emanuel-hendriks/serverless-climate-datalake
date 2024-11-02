variable "user_profile_name" {
  description = "Name of the user profile"
  default = ""
}

variable "domain_id" {
  description = "The SageMaker domain ID"
}

variable "role_arn" {
  description = "The execution role ARN for the user"
}

variable "security_groups" {
  description = "The security groups"
  type = list(string)
  default = []
}

variable "common_tags" {
  description = "Common tags among whole infrastructure"
  type        = map(string)
}