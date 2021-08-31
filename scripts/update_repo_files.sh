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
terraform-aws-modules/terraform-aws-apigateway-v2
terraform-aws-modules/terraform-aws-appsync
terraform-aws-modules/terraform-aws-atlantis
terraform-aws-modules/terraform-aws-autoscaling
terraform-aws-modules/terraform-aws-cloudwatch
terraform-aws-modules/terraform-aws-customer-gateway
terraform-aws-modules/terraform-aws-dynamodb-table
terraform-aws-modules/terraform-aws-ebs-optimized
terraform-aws-modules/terraform-aws-ec2-instance
terraform-aws-modules/terraform-aws-ecs
terraform-aws-modules/terraform-aws-eks
terraform-aws-modules/terraform-aws-elb
terraform-aws-modules/terraform-aws-eventbridge
terraform-aws-modules/terraform-aws-iam
terraform-aws-modules/terraform-aws-key-pair
terraform-aws-modules/terraform-aws-lambda
terraform-aws-modules/terraform-aws-notify-slack
terraform-aws-modules/terraform-aws-pricing
terraform-aws-modules/terraform-aws-rds
terraform-aws-modules/terraform-aws-rds-aurora
terraform-aws-modules/terraform-aws-redshift
terraform-aws-modules/terraform-aws-s3-bucket
#terraform-aws-modules/terraform-aws-s3-object # archived (readonly)
terraform-aws-modules/terraform-aws-security-group
terraform-aws-modules/terraform-aws-sns
terraform-aws-modules/terraform-aws-sqs
terraform-aws-modules/terraform-aws-step-functions
terraform-aws-modules/terraform-aws-transit-gateway
terraform-aws-modules/terraform-aws-vpc
terraform-aws-modules/terraform-aws-vpn-gateway
)

tfswitch --latest-stable 1.0

for dir in "${dirs[@]}"; do

  pushd "$dir" > /dev/null

  echo "**************************"
  echo "$dir"
  echo "**************************"

  # Remove remaining branches after githubfile's PRs were closed
#  git branch -r | awk -F/ '/\/terraform-provider-githubfile-/{print $2}' | xargs -I {} git push origin --delete {}

#  set +e
  # skip first failed init due to a missing githubfile provider
#  terragrunt init
#  set -e

#  (terragrunt state list | grep -q 'githubfile_file.static') && terragrunt state rm -lock=false 'githubfile_file.static' || echo "There are no managed github files."

#  tfswitch --latest-stable 1.0
#  rm -rf .terragrunt-cache
  terragrunt apply -auto-approve

  popd > /dev/null

done
