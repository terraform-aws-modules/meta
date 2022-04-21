terraform {
  source = "${path_relative_from_include()}/../modules/main"
}

include {
  path = find_in_parent_folders()
}

locals {
  branch_protections = {
    "terraform-aws-*/master" = {
      required_status_checks = {
        contexts = [
          "WIP",
        ]
      }
    }

    "terraform-aws-meta/master" = {
      allows_force_pushes = true # just for local development
      required_status_checks = {
        contexts = [
          "WIP",
        ]
      }
    }
  }
}

inputs = {

  repositories = {

    terraform-aws-acm = {
      description  = "Terraform module which creates and validates ACM certificate 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/acm/aws"
      topics       = ["aws", "aws-acm", "aws-acm-certificate", "terraform-module"]
    }

    terraform-aws-alb = {
      description  = "Terraform module to create an AWS Application/Network Load Balancer (ALB/NLB) and associated resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/alb/aws"
      topics       = ["aws", "application-load-balancer", "alb", "network-load-balancer", "nlb", "terraform-module"]
    }

    terraform-aws-apigateway-v2 = {
      description  = "Terraform module to create an AWS API Gateway v2 (HTTP/WebSocket) 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/apigateway-v2/aws"
      topics       = ["aws", "aws-apigateway", "serverless", "terraform-serverless", "terraform-module"]
    }

    terraform-aws-appsync = {
      description  = "Terraform module to create AWS AppSync resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/appsync/aws"
      topics       = ["aws", "aws-appsync", "graphql", "appsync", "serverless", "terraform-serverless", "terraform-module"]
    }

    terraform-aws-atlantis = {
      description  = "Terraform configurations for running Atlantis on AWS Fargate. Github, Gitlab and BitBucket are supported 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/atlantis/aws"
      topics       = ["aws", "atlantis", "aws-fargate", "terraform-module"]
    }

    terraform-aws-autoscaling = {
      description  = "Terraform module which creates Auto Scaling resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws"
      topics       = ["aws", "autoscaling-groups", "autoscaling", "aws-autoscaling", "terraform-module"]
    }

    terraform-aws-cloudfront = {
      description  = "Terraform module which creates CloudFront resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/cloudfront/aws"
      topics       = ["aws", "cloudfront", "aws-cloudfront", "terraform-module"]
    }

    terraform-aws-cloudwatch = {
      description  = "Terraform module which creates Cloudwatch resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/cloudwatch/aws"
      topics       = ["aws", "cis-benchmarks", "cloudwatch", "cloudwatch-logs", "cloudwatch-alarms", "aws-cloudwatch", "cloudwatch-metrics", "terraform-module"]
    }

    terraform-aws-customer-gateway = {
      description  = "Terraform module which creates Customer Gateway on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/customer-gateway/aws"
      topics       = ["aws", "aws-vpn", "terraform-module"]
    }

    terraform-aws-dynamodb-table = {
      description  = "Terraform module which creates DynamoDB table on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/dynamodb-table/aws"
      topics       = ["aws", "dynamodb", "terraform-module"]
    }

    terraform-aws-ebs-optimized = {
      description  = "Terraform module to determine if an instance can be flagged for EBS optimization"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ebs-optimized/aws"
      topics       = ["aws", "ebs", "ebs-optimized", "ebs-volumes", "terraform-module"]
      archived     = true
    }

    terraform-aws-ec2-instance = {
      description  = "Terraform module which creates EC2 instance(s) on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws"
      topics       = ["aws", "aws-ec2", "ec2-instance", "terraform-module"]
    }

    terraform-aws-ecs = {
      description  = "Terraform module which creates AWS ECS resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ecs/aws"
      topics       = ["aws", "ecs", "aws-ecs", "terraform-module"]
    }

    terraform-aws-eks = {
      description  = "Terraform module to create an Elastic Kubernetes (EKS) cluster and associated worker instances on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/eks/aws"
      topics       = ["aws", "eks", "kubernetes", "kubernetes-deployment", "kubernetes-setup", "elastic-kubernetes-service", "terraform", "terraform-module"]
    }

    terraform-aws-elb = {
      description  = "Terraform module which creates ELB resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/elb/aws"
      topics       = ["aws", "elb", "aws-elb", "terraform-module"]
    }

    terraform-aws-eventbridge = {
      description  = "Terraform module which creates EventBridge resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/eventbridge/aws"
      topics       = ["aws", "eventbridge", "serverless", "terraform-serverless", "terraform-module"]
    }

    terraform-aws-iam = {
      description  = "Terraform module which creates IAM resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/iam/aws"
      topics       = ["aws", "iam", "aws-iam", "terraform-module"]
    }

    terraform-aws-key-pair = {
      description  = "Terraform module which creates EC2 key pair on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/key-pair/aws"
      topics       = ["aws", "aws-ec2", "ec2-key-pair", "key-pair", "terraform-module"]
    }

    terraform-aws-lambda = {
      description  = "Terraform module, which takes care of a lot of AWS Lambda/serverless tasks (build dependencies, packages, updates, deployments) in countless combinations 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/lambda/aws"
      topics       = ["aws", "aws-lambda", "serverless", "terraform-serverless", "terraform-module"]
    }

    terraform-aws-notify-slack = {
      description  = "Terraform module which creates SNS topic and Lambda function which sends notifications to Slack 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/notify-slack/aws"
      topics       = ["aws", "aws-lambda", "aws-cloudwatch", "slack", "terraform-module"]
    }

    terraform-aws-pricing = {
      description  = "Terraform module which calculates price of AWS infrastructure (from Terraform state and plan) 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/pricing/aws"
      topics       = ["aws", "pricing", "aws-pricing", "aws-pricing-api", "aws-pricing-terraform", "terraform-cost-estimation", "cost-estimation", "terraform-module"]
    }

    terraform-aws-rds = {
      description  = "Terraform module which creates RDS resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/rds/aws"
      topics       = ["aws", "rds", "aws-rds", "aws-rds-terraform", "terraform-module"]
    }

    terraform-aws-rds-aurora = {
      description  = "Terraform module which creates RDS Aurora resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/rds-aurora/aws"
      topics       = ["aws", "rds", "rds-aurora", "terraform-module"]
    }

    terraform-aws-redshift = {
      description  = "Terraform module which creates Redshift resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/redshift/aws"
      topics       = ["aws", "redshift", "redshift-cluster", "terraform-module"]
    }

    terraform-aws-route53 = {
      description  = "Terraform module which creates Route53 resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/route53/aws"
      topics       = ["aws", "route53", "dns", "terraform-module"]
    }

    terraform-aws-s3-bucket = {
      description  = "Terraform module which creates S3 bucket resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws"
      topics       = ["aws", "aws-s3", "s3", "terraform-module"]
    }

    terraform-aws-security-group = {
      description  = "Terraform module which creates EC2-VPC security groups on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws"
      topics       = ["aws", "security-group", "aws-security-group", "aws-vpc", "terraform-module"]
    }

    terraform-aws-sns = {
      description  = "Terraform module which creates SNS resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/sns/aws"
      topics       = ["sns", "sns-topic", "terraform-module"]
    }

    terraform-aws-sqs = {
      description  = "Terraform module which creates SQS resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/sqs/aws"
      topics       = ["aws", "sqs", "aws-sqs", "terraform-module"]
    }

    terraform-aws-step-functions = {
      description  = "Terraform module which creates Step Functions on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/step-functions/aws"
      topics       = ["aws", "aws-lambda", "aws-step-functions", "serverless", "terraform-serverless", "terraform-module"]
    }

    terraform-aws-transit-gateway = {
      description  = "Terraform module which creates Transit Gateway resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/transit-gateway/aws"
      topics       = ["aws", "transit-gateway", "aws-vpc", "terraform-module"]
    }

    terraform-aws-vpc = {
      description  = "Terraform module which creates VPC resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws"
      topics       = ["aws", "aws-vpc", "vpc", "terraform-module"]
    }

    terraform-aws-vpn-gateway = {
      description  = "Terraform module which creates VPN gateway resources on AWS 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/vpn-gateway/aws"
      topics       = ["aws", "aws-vpn", "vpn-gateway", "terraform-module"]
    }

    terraform-aws-rds-proxy = {
      description  = "Terraform module which creates AWS RDS Proxy resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/rds-proxy/aws"
      topics       = ["serverless", "rds-proxy", "aws-rds-proxy", "aws", "terraform-module"]
    }

    terraform-aws-datadog-forwarders = {
      description  = "Terraform module which creates resources on AWS to forward logs/metrics to Datadog 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/datadog-forwarders/aws"
      topics       = ["datadog", "datadog-logs", "aws-datadog", "aws", "terraform-module"]
    }

    terraform-aws-dms = {
      description  = "Terraform module which creates AWS DMS (Database Migration Service) resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/dms/aws"
      topics       = ["terraform-module", "aws-dms", "database-migration-service", "aws", "terraform"]
    }

    terraform-aws-appconfig = {
      description  = "Terraform module which creates AWS AppConfig resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/appconfig/aws"
      topics       = ["feature-flags", "appconfig", "aws-appconfig", "aws", "terraform", "terraform-module"]
    }

    terraform-aws-memory-db = {
      description  = "Terraform module which creates AWS MemoryDB resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/memory-db/aws"
      topics       = ["memory-database", "aws-memory-db", "aws", "terraform", "terraform-module"]
    }

    terraform-aws-ecr = {
      description  = "Terraform module which creates AWS ECR resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ecr/aws"
      topics       = ["aws", "terraform", "aws-ecr", "ecr", "ecr-repositories", "terraform-module"]
    }

    terraform-aws-batch = {
      description  = "Terraform module which creates AWS Batch resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/batch/aws"
      topics       = ["batch-processing", "aws-batch", "terraform-module", "aws", "terraform"]
    }

    terraform-aws-managed-service-prometheus = {
      description  = "Terraform module which creates AWS Managed Service for Prometheus (AMP) resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/managed-service-prometheus/aws"
      topics       = ["prometheus", "observability", "aws", "terraform", "terraform-module"]
    }

    terraform-aws-managed-service-grafana = {
      description  = "Terraform module which creates AWS Managed Service for Grafana (AMG) resources 🇺🇦"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/managed-service-grafana/aws"
      topics       = ["grafana", "terraform-module", "aws", "terraform"]
    }

    #######################
    # Special repositories
    #######################
    meta = {
      description  = "Meta-configurations for repositories, teams, files in terraform-aws-modules organization 🇺🇦"
      homepage_url = "https://github.com/terraform-aws-modules"
      topics       = ["terraform-configurations", "terraform-github", "terraform-managed", "open-source-tooling"]
    }

    ".github" = {
      description = "Meta-GitHub repository for all terraform-aws-modules repositories 🇺🇦"
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
    // All repos are having the same requirements
    "terraform-aws-acm/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-alb/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-apigateway-v2/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-appsync/master"                    = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-atlantis/master"                   = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-autoscaling/master"                = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-cloudfront/master"                 = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-cloudwatch/master"                 = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-customer-gateway/master"           = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-dynamodb-table/master"             = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-ebs-optimized/master"              = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-ec2-instance/master"               = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-ecs/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-eks/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-elb/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-eventbridge/master"                = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-iam/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-key-pair/master"                   = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-lambda/master"                     = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-notify-slack/master"               = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-pricing/master"                    = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-rds/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-rds-aurora/master"                 = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-redshift/master"                   = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-route53/master"                    = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-s3-bucket/master"                  = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-security-group/master"             = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-sns/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-sqs/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-step-functions/master"             = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-transit-gateway/master"            = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-vpc/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-vpn-gateway/master"                = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-rds-proxy/master"                  = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-datadog-forwarders/master"         = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-dms/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-appconfig/master"                  = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-memory-db/master"                  = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-ecr/master"                        = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-batch/master"                      = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-managed-service-prometheus/master" = local.branch_protections["terraform-aws-*/master"]
    "terraform-aws-managed-service-grafana/master"    = local.branch_protections["terraform-aws-*/master"]

    "meta/master" = local.branch_protections["terraform-aws-meta/master"]
  }

  ########
  # TEAMS
  ########
  # Privacy = {closed, secret}
  teams = {
    maintainers = {
      privacy = "closed"
    }
    triage-supporters = {
      privacy = "closed"
    }
  }

  # Team/Repository = {pull, triage, push, maintain, admin}
  team_repositories = {
    "maintainers/terraform-aws-acm"                        = "maintain"
    "maintainers/terraform-aws-alb"                        = "maintain"
    "maintainers/terraform-aws-apigateway-v2"              = "maintain"
    "maintainers/terraform-aws-appsync"                    = "maintain"
    "maintainers/terraform-aws-atlantis"                   = "maintain"
    "maintainers/terraform-aws-autoscaling"                = "maintain"
    "maintainers/terraform-aws-cloudfront"                 = "maintain"
    "maintainers/terraform-aws-cloudwatch"                 = "maintain"
    "maintainers/terraform-aws-customer-gateway"           = "maintain"
    "maintainers/terraform-aws-dynamodb-table"             = "maintain"
    "maintainers/terraform-aws-ebs-optimized"              = "maintain"
    "maintainers/terraform-aws-ec2-instance"               = "maintain"
    "maintainers/terraform-aws-ecs"                        = "maintain"
    "maintainers/terraform-aws-elb"                        = "maintain"
    "maintainers/terraform-aws-eks"                        = "maintain"
    "maintainers/terraform-aws-eventbridge"                = "maintain"
    "maintainers/terraform-aws-iam"                        = "maintain"
    "maintainers/terraform-aws-key-pair"                   = "maintain"
    "maintainers/terraform-aws-lambda"                     = "maintain"
    "maintainers/terraform-aws-notify-slack"               = "maintain"
    "maintainers/terraform-aws-pricing"                    = "maintain"
    "maintainers/terraform-aws-rds"                        = "maintain"
    "maintainers/terraform-aws-rds-aurora"                 = "maintain"
    "maintainers/terraform-aws-redshift"                   = "maintain"
    "maintainers/terraform-aws-route53"                    = "maintain"
    "maintainers/terraform-aws-s3-bucket"                  = "maintain"
    "maintainers/terraform-aws-security-group"             = "maintain"
    "maintainers/terraform-aws-sns"                        = "maintain"
    "maintainers/terraform-aws-sqs"                        = "maintain"
    "maintainers/terraform-aws-step-functions"             = "maintain"
    "maintainers/terraform-aws-transit-gateway"            = "maintain"
    "maintainers/terraform-aws-vpc"                        = "maintain"
    "maintainers/terraform-aws-vpn-gateway"                = "maintain"
    "maintainers/terraform-aws-rds-proxy"                  = "maintain"
    "maintainers/terraform-aws-datadog-forwarders"         = "maintain"
    "maintainers/terraform-aws-dms"                        = "maintain"
    "maintainers/terraform-aws-appconfig"                  = "maintain"
    "maintainers/terraform-aws-memory-db"                  = "maintain"
    "maintainers/terraform-aws-ecr"                        = "maintain"
    "maintainers/terraform-aws-batch"                      = "maintain"
    "maintainers/terraform-aws-managed-service-prometheus" = "maintain"
    "maintainers/terraform-aws-managed-service-grafana"    = "maintain"

    "triage-supporters/terraform-aws-acm"                        = "triage"
    "triage-supporters/terraform-aws-alb"                        = "triage"
    "triage-supporters/terraform-aws-apigateway-v2"              = "triage"
    "triage-supporters/terraform-aws-appsync"                    = "triage"
    "triage-supporters/terraform-aws-atlantis"                   = "triage"
    "triage-supporters/terraform-aws-autoscaling"                = "triage"
    "triage-supporters/terraform-aws-cloudfront"                 = "triage"
    "triage-supporters/terraform-aws-cloudwatch"                 = "triage"
    "triage-supporters/terraform-aws-customer-gateway"           = "triage"
    "triage-supporters/terraform-aws-dynamodb-table"             = "triage"
    "triage-supporters/terraform-aws-ebs-optimized"              = "triage"
    "triage-supporters/terraform-aws-ec2-instance"               = "triage"
    "triage-supporters/terraform-aws-ecs"                        = "triage"
    "triage-supporters/terraform-aws-elb"                        = "triage"
    "triage-supporters/terraform-aws-eks"                        = "triage"
    "triage-supporters/terraform-aws-eventbridge"                = "triage"
    "triage-supporters/terraform-aws-iam"                        = "triage"
    "triage-supporters/terraform-aws-key-pair"                   = "triage"
    "triage-supporters/terraform-aws-lambda"                     = "triage"
    "triage-supporters/terraform-aws-notify-slack"               = "triage"
    "triage-supporters/terraform-aws-pricing"                    = "triage"
    "triage-supporters/terraform-aws-rds"                        = "triage"
    "triage-supporters/terraform-aws-rds-aurora"                 = "triage"
    "triage-supporters/terraform-aws-redshift"                   = "triage"
    "triage-supporters/terraform-aws-route53"                    = "triage"
    "triage-supporters/terraform-aws-s3-bucket"                  = "triage"
    "triage-supporters/terraform-aws-security-group"             = "triage"
    "triage-supporters/terraform-aws-sns"                        = "triage"
    "triage-supporters/terraform-aws-sqs"                        = "triage"
    "triage-supporters/terraform-aws-step-functions"             = "triage"
    "triage-supporters/terraform-aws-transit-gateway"            = "triage"
    "triage-supporters/terraform-aws-vpc"                        = "triage"
    "triage-supporters/terraform-aws-vpn-gateway"                = "triage"
    "triage-supporters/terraform-aws-rds-proxy"                  = "triage"
    "triage-supporters/terraform-aws-datadog-forwarders"         = "triage"
    "triage-supporters/terraform-aws-dms"                        = "triage"
    "triage-supporters/terraform-aws-appconfig"                  = "triage"
    "triage-supporters/terraform-aws-memory-db"                  = "triage"
    "triage-supporters/terraform-aws-ecr"                        = "triage"
    "triage-supporters/terraform-aws-batch"                      = "triage"
    "triage-supporters/terraform-aws-managed-service-prometheus" = "triage"
    "triage-supporters/terraform-aws-managed-service-grafana"    = "triage"

    "maintainers/meta"       = "maintain"
    "triage-supporters/meta" = "triage"
  }

  # Role = {member, maintainer}
  team_memberships = {
    "maintainers/bryantbiggs" = "member"

    "triage-supporters/barryib"             = "member"
    "triage-supporters/max-rocket-internet" = "member"
    "triage-supporters/bryantbiggs"         = "member"
    "triage-supporters/dpiddock"            = "member"
    "triage-supporters/DrFaust92"           = "member"
    "triage-supporters/tfhartmann"          = "member"
    "triage-supporters/svenlito"            = "member"
    "triage-supporters/nitrocode"           = "member"
    "triage-supporters/daroga0002"          = "member"
  }

  members = [
    "barryib",
    "max-rocket-internet",
    "bryantbiggs",
    "dpiddock",
    "DrFaust92",
    "tfhartmann",
    "svenlito",
    "nitrocode",
    "daroga0002",
  ]

  admins = ["antonbabenko"]

}
