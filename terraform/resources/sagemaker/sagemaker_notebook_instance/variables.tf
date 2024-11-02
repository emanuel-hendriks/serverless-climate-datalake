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

variable "name" {
  description = "name of Notebook resources"
  default = ""
}

variable "email" {
  description = "Email of sagemaker user"
  default = ""
}

variable "instance_type" {
  description = "The name of ML compute instance type"
}

variable "platform_identifier" {
  default = "notebook-al2-v1"
}

variable "subnet_id" {
  type = string
  description = "The VPC subnet ID"
}

variable "role_arn" {
  description = "the role associated to the sagemaker notebook instance"
}

variable "security_groups" {
  type = list(string)
  description = "The associated security groups"
}

variable "lifecycle_config_name" {
  description = "The name of lifecycle config to the sagemaker notebook instance"
  default = ""
}

variable "direct_internet_access" {
  description = "Supported values: Enabled (Default) or Disabled. If set to Disabled, the notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC"
  default = "Disabled"
}

variable "default_code_repository" {
  description = "The Git repository associated with the notebook instance as its default code repository"
  default     = ""
}

variable "additional_code_repositories" {
  description = "An array of up to three Git repositories to associate with the notebook instance"
  default     = []
}

variable "kms_key_id" {
  description = "The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses to encrypt the model artifacts at rest using Amazon S3 server-side encryption"
  default     = ""
}

variable "common_tags" {
  description = "Common tags among whole infrastructure"
  type        = map(string)
}