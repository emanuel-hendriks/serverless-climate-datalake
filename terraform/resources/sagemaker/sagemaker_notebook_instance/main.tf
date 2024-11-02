
data "aws_kms_alias" "s3" {
  name = "alias/aws/s3"
}

resource "aws_sagemaker_notebook_instance" "this" {
  name = "jungfrau-notebook"
  
  role_arn                = var.role_arn
  instance_type           = var.instance_type
  platform_identifier     = var.platform_identifier
  subnet_id               = var.subnet_id
  security_groups         = var.security_groups
  direct_internet_access  = var.direct_internet_access
  lifecycle_config_name   = var.lifecycle_config_name

  default_code_repository       = var.default_code_repository
  additional_code_repositories  = var.additional_code_repositories

  kms_key_id = var.kms_key_id

  tags = merge(
    var.common_tags,
    length(var.email) > 0 ? { email = var.email } : {}
  )

}