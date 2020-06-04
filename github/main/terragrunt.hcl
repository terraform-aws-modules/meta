terraform {
  source = "${path_relative_from_include()}/../modules/main"
}

include {
  path = find_in_parent_folders()
}

locals {
  branch_protections = {
    "terraform-aws-eks/master" = {
      required_status_checks = {
        contexts = [
          "Code Format",
          "Docs",
          "TFLint",
          "Validate",
          "WIP",
          "Minimum version check",
          "Semantic Pull Request"
        ]
      }
    }

    "terraform-aws-*/master" = {
      required_status_checks = {
        contexts = [
          "WIP",
          "Semantic Pull Request"
        ]
      }
    }
  }
}

inputs = {

  repositories = {

    terraform-aws-acm = {
      description  = "Terraform module which creates and validates ACM certificate"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/acm/aws"
      topics       = ["aws", "aws-acm", "aws-acm-certificate", "terraform-module"]
    }

    terraform-aws-alb = {
      description  = "Terraform module to create an AWS Application/Network Load Balancer (ALB/NLB) and associated resources"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/alb/aws"
      topics       = ["aws", "application-load-balancer", "alb", "network-load-balancer", "nlb", "terraform-module"]
    }

    terraform-aws-atlantis = {
      description  = "Terraform configurations for running Atlantis on AWS Fargate. Github, Gitlab and BitBucket are supported"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/atlantis/aws"
      topics       = ["aws", "atlantis", "aws-fargate", "terraform-module"]
    }

    terraform-aws-autoscaling = {
      description  = "Terraform module which creates Auto Scaling resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws"
      topics       = ["aws", "autoscaling-groups", "autoscaling", "aws-autoscaling", "terraform-module"]
    }

    terraform-aws-cloudwatch = {
      description  = "Terraform module which creates Cloudwatch resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/cloudwatch/aws"
      topics       = ["aws", "cis-benchmarks", "cloudwatch", "cloudwatch-logs", "cloudwatch-alarms", "aws-cloudwatch", "cloudwatch-metrics", "terraform-module"]
    }

    terraform-aws-customer-gateway = {
      description  = "Terraform module which creates Customer Gateway on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/customer-gateway/aws"
      topics       = ["aws", "aws-vpn", "terraform-module"]
    }

    terraform-aws-dynamodb-table = {
      description  = "Terraform module which creates DynamoDB table on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/dynamodb-table/aws"
      topics       = ["aws", "dynamodb", "terraform-module"]
    }

    terraform-aws-ebs-optimized = {
      description  = "Terraform module to determine if an instance can be flagged for EBS optimization"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ebs-optimized/aws"
      topics       = ["aws", "ebs", "ebs-optimized", "ebs-volumes", "terraform-module"]
    }

    terraform-aws-ec2-instance = {
      description  = "Terraform module which creates EC2 instance(s) on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws"
      topics       = ["aws", "aws-ec2", "ec2-instance", "terraform-module"]
    }

    terraform-aws-ecs = {
      description  = "Terraform module which creates AWS ECS resources"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ecs/aws"
      topics       = ["aws", "ecs", "aws-ecs", "terraform-module"]
    }

    terraform-aws-eks = {
      description  = "Terraform module to create an Elastic Kubernetes (EKS) cluster and associated worker instances on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/eks/aws"
      topics       = ["aws", "eks", "kubernetes", "kubernetes-deployment", "kubernetes-setup", "elastic-kubernetes-service", "terraform", "terraform-module"]
    }

    terraform-aws-elb = {
      description  = "Terraform module which creates ELB resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/elb/aws"
      topics       = ["aws", "elb", "aws-elb", "terraform-module"]
    }

    terraform-aws-iam = {
      description  = "Terraform module which creates IAM resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/iam/aws"
      topics       = ["aws", "iam", "aws-iam", "terraform-module"]
    }

    terraform-aws-key-pair = {
      description  = "Terraform module which creates EC2 key pair on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/key-pair/aws"
      topics       = ["aws", "aws-ec2", "ec2-key-pair", "key-pair", "terraform-module"]
    }

    terraform-aws-lambda = {
      description  = "Terraform module, which builds dependencies and packages, and also creates AWS Lambda resources in countless combinations"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/lambda/aws"
      topics       = ["aws", "aws-lambda", "serverless", "terraform-serverless", "terraform-module"]
    }

    terraform-aws-notify-slack = {
      description  = "Terraform module which creates SNS topic and Lambda function which sends notifications to Slack"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/notify-slack/aws"
      topics       = ["aws", "aws-lambda", "aws-cloudwatch", "slack", "terraform-module"]
    }

    terraform-aws-rds = {
      description  = "Terraform module which creates RDS resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/rds/aws"
      topics       = ["aws", "rds", "aws-rds", "aws-rds-terraform", "terraform-module"]
    }

    terraform-aws-rds-aurora = {
      description  = "Terraform module which creates RDS Aurora resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/rds-aurora/aws"
      topics       = ["aws", "rds", "rds-aurora", "terraform-module"]
    }

    terraform-aws-redshift = {
      description  = "Terraform module which creates Redshift resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/redshift/aws"
      topics       = ["aws", "redshift", "redshift-cluster", "terraform-module"]
    }

    terraform-aws-s3-bucket = {
      description  = "Terraform module which creates S3 bucket resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws"
      topics       = ["aws", "aws-s3", "s3", "terraform-module"]
    }

    terraform-aws-s3-object = {
      description  = "Terraform module which creates S3 object resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/s3-object/aws"
      topics       = ["aws", "s3", "aws-s3", "terraform-module"]
    }

    terraform-aws-security-group = {
      description  = "Terraform module which creates EC2-VPC security groups on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws"
      topics       = ["aws", "security-group", "aws-security-group", "aws-vpc", "terraform-module"]
    }

    terraform-aws-sns = {
      description  = "Terraform module which creates SNS resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/sns/aws"
      topics       = ["sns", "sns-topic", "terraform-module"]
    }

    terraform-aws-sqs = {
      description  = "Terraform module which creates SQS resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/sqs/aws"
      topics       = ["aws", "sqs", "aws-sqs", "terraform-module"]
    }

    terraform-aws-transit-gateway = {
      description  = "Terraform module which creates Transit Gateway resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/transit-gateway/aws"
      topics       = ["aws", "transit-gateway", "aws-vpc", "terraform-module"]
    }

    terraform-aws-vpc = {
      description  = "Terraform module which creates VPC resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws"
      topics       = ["aws", "aws-vpc", "vpc", "terraform-module"]
    }

    terraform-aws-vpn-gateway = {
      description  = "Terraform module which creates VPN gateway resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/vpn-gateway/aws"
      topics       = ["aws", "aws-vpn", "vpn-gateway", "terraform-module"]
    }

    #######################
    # Special repositories
    #######################
    meta = {
      description  = "Meta-configurations for repositories, teams, files in terraform-aws-modules organization"
      homepage_url = "https://github.com/terraform-aws-modules"
      topics       = ["terraform-configurations", "terraform-github", "terraform-managed", "open-source-tooling"]
    }

    ".github" = {
      description = "Meta-GitHub repository for all terraform-aws-modules repositories"
      topics      = ["github-metadata", "open-source-tooling"]
      auto_init   = false
    }

    "atlantis-demo" = {
      description = "Demo repository for Atlantis"
      topics      = ["atlantis"]
      auto_init   = false
    }

  }

  branch_protections = {
    // EKS is a bit different (still)
    "terraform-aws-eks/master" = local.branch_protections["terraform-aws-eks/master"]

    // All repos are having the same requirements
    "terraform-aws-acm/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-alb/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-atlantis/master"         = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-autoscaling/master"      = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-cloudwatch/master"       = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-customer-gateway/master" = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-dynamodb-table/master"   = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-ebs-optimized/master"    = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-ec2-instance/master"     = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-ecs/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-elb/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-iam/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-key-pair/master"         = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-lambda/master"           = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-notify-slack/master"     = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-rds/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-rds-aurora/master"       = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-redshift/master"         = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-s3-bucket/master"        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-s3-object/master"        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-security-group/master"   = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-sns/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-sqs/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-transit-gateway/master"  = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-vpc/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-vpn-gateway/master"      = local.branch_protections["terraform-aws-*/master"]

    "meta/master" = local.branch_protections["terraform-aws-*/master"]
  }

  ########
  # TEAMS
  ########
  # Privacy = {closed, secret}
  teams = {
    aws-eks = {
      privacy = "closed"
    }
    aws-dynamodb-table = {
      privacy = "closed"
    }
  }

  # Team/Repository = {pull, triage, push, maintain, admin}
  team_repositories = {
    "aws-eks/terraform-aws-eks"                       = "admin"
    "aws-dynamodb-table/terraform-aws-dynamodb-table" = "admin"
  }

  # Role = {member, maintainer}
  team_memberships = {
    "aws-eks/barryib"                        = "member"
    "aws-eks/max-rocket-internet"            = "member"
    "aws-eks/dpiddockcmp"                    = "member"
    "aws-dynamodb-table/max-rocket-internet" = "member"
  }

  members = [
    "barryib",
    "max-rocket-internet",
    "brandonjbjelland",
    "bryantbiggs",
    "dpiddockcmp",
    "DrFaust92",
  ]

  admins = ["antonbabenko"]

}
