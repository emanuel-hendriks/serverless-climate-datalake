resource "aws_sagemaker_user_profile" "this" {
  domain_id         = var.domain_id
  user_profile_name = "jungfrau-sagemaker-user-profile"

  user_settings {
    execution_role  = var.role_arn
    security_groups = var.security_groups
  }

  tags = var.common_tags
}