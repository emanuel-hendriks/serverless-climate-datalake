locals {
}

data "aws_kms_alias" "s3" {
  name = "alias/aws/s3"
}

resource "aws_sagemaker_domain" "this" {
  domain_name = "jungfrau-sagemaker-domain"

  auth_mode = "IAM"

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  app_network_access_type = "VpcOnly"

  default_user_settings {
    execution_role = var.role_arn
    security_groups = var.security_groups

    sharing_settings {
      notebook_output_option = "Allowed"
      s3_kms_key_id          = data.aws_kms_alias.s3.id
      s3_output_path         = "s3://${var.sharing_s3}/sharing"
    }
  }

  tags = var.common_tags
}