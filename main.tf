terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

data "aws_default_tags" "these" {}

data "aws_region" "this" {}

data "aws_caller_identity" "current" {}

data "aws_partition" "current" {}

# data "aws_billing_service_account" "main" {}
#
# output "billing_service_account" {
#   value = data.aws_billing_service_account.main.id
# }

output "aws_partition" {
  value = data.aws_partition.current.partition
}

output "aws_partition_reverse_dns_suffix" {
  value = data.aws_partition.current.reverse_dns_prefix
}

output "default_tags" {
  value = data.aws_default_tags.these.tags
}

output "region" {
  value = data.aws_region.this.name
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
