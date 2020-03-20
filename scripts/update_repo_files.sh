#!/usr/bin/env bash

set -e # do exit on bad exit code

# Locate the directory in which this script is located
readonly SCRIPT_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# This dir
readonly GITHUB_REPOS_DIR="${SCRIPT_PATH}/../github/repositories"

# Local copy
#readonly GITHUB_REPOS_DIR="${SCRIPT_PATH}/../../.."

pushd "$GITHUB_REPOS_DIR" > /dev/null

# All dirs including hidden (.github, for eg)
#dirs=($(find * -mindepth 1 -maxdepth 1 -type d -path "terraform-aws-modules/*" | sort))

dirs=(
terraform-aws-modules/.github
terraform-aws-modules/meta
terraform-aws-modules/terraform-aws-acm
terraform-aws-modules/terraform-aws-alb
terraform-aws-modules/terraform-aws-atlantis
terraform-aws-modules/terraform-aws-autoscaling
terraform-aws-modules/terraform-aws-cloudwatch
terraform-aws-modules/terraform-aws-customer-gateway
terraform-aws-modules/terraform-aws-ebs-optimized
terraform-aws-modules/terraform-aws-ec2-instance
terraform-aws-modules/terraform-aws-ecs
terraform-aws-modules/terraform-aws-eks
terraform-aws-modules/terraform-aws-elb
terraform-aws-modules/terraform-aws-iam
terraform-aws-modules/terraform-aws-key-pair
terraform-aws-modules/terraform-aws-notify-slack
terraform-aws-modules/terraform-aws-rds
terraform-aws-modules/terraform-aws-rds-aurora
terraform-aws-modules/terraform-aws-redshift
terraform-aws-modules/terraform-aws-s3-bucket
terraform-aws-modules/terraform-aws-s3-object
terraform-aws-modules/terraform-aws-security-group
terraform-aws-modules/terraform-aws-sns
terraform-aws-modules/terraform-aws-sqs
terraform-aws-modules/terraform-aws-transit-gateway
terraform-aws-modules/terraform-aws-vpc
terraform-aws-modules/terraform-aws-vpn-gateway
)

for dir in "${dirs[@]}"; do

  pushd "$dir" > /dev/null

  echo "$dir"

  # Remove remaining branches after githubfile's PRs were closed
#  git branch -r | awk -F/ '/\/terraform-provider-githubfile-/{print $2}' | xargs -I {} git push origin --delete {}

    terragrunt apply

  popd > /dev/null

done
