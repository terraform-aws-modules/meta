terraform {
  source = "${path_relative_from_include()}/../modules/main"
}

include {
  path = find_in_parent_folders()
}

inputs = {

  repositories = {

    terraform-aws-acm = {
      description  = "Terraform module which creates and validates ACM certificate"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/acm/aws"
      topics       = ["aws", "aws-acm", "aws-acm-certificate", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-alb = {
      description  = "Terraform module to create an AWS Application/Network Load Balancer (ALB/NLB) and associated resources"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/alb/aws"
      topics       = ["aws", "application-load-balancer", "alb", "network-load-balancer", "nlb", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-atlantis = {
      description  = "Terraform configurations for running Atlantis on AWS Fargate. Github, Gitlab and BitBucket are supported"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/atlantis/aws"
      topics       = ["aws", "atlantis", "aws-fargate", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-autoscaling = {
      description  = "Terraform module which creates Auto Scaling resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws"
      topics       = ["aws", "autoscaling-groups", "autoscaling", "aws-autoscaling", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-cloudwatch = {
      description  = "Terraform module which creates Cloudwatch resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/cloudwatch/aws"
      topics       = ["aws", "cloudwatch", "cloudwatch-logs", "cloudwatch-alarms", "aws-cloudwatch", "cloudwatch-metrics", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-customer-gateway = {
      description  = "Terraform module which creates Customer Gateway on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/customer-gateway/aws"
      topics       = ["aws", "aws-vpn", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-ebs-optimized = {
      description  = "Terraform module to determine if an instance can be flagged for EBS optimization"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ebs-optimized/aws"
      topics       = ["aws", "ebs", "ebs-optimized", "ebs-volumes", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-ec2-instance = {
      description  = "Terraform module which creates EC2 instance(s) on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws"
      topics       = ["aws", "aws-ec2", "ec2-instance", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-ecs = {
      description  = "Terraform module which creates AWS ECS resources"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/ecs/aws"
      topics       = ["aws", "ecs", "aws-ecs", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-eks = {
      description  = "Terraform module to create an Elastic Kubernetes (EKS) cluster and associated worker instances on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/eks/aws"
      topics       = ["aws", "eks", "kubernetes", "kubernetes-deployment", "kubernetes-setup", "elastic-kubernetes-service", "terraform", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-elb = {
      description  = "Terraform module which creates ELB resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/elb/aws"
      topics       = ["aws", "elb", "aws-elb", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-iam = {
      description  = "Terraform module which creates IAM resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/iam/aws"
      topics       = ["aws", "iam", "aws-iam", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-key-pair = {
      description  = "Terraform module which creates EC2 key pair on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/key-pair/aws"
      topics       = ["aws", "aws-ec2", "ec2-key-pair", "key-pair", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-notify-slack = {
      description  = "Terraform module which creates SNS topic and Lambda function which sends notifications to Slack"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/notify-slack/aws"
      topics       = ["aws", "aws-lambda", "aws-cloudwatch", "slack", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-rds = {
      description  = "Terraform module which creates RDS resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/rds/aws"
      topics       = ["aws", "rds", "aws-rds", "aws-rds-terraform", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-rds-aurora = {
      description  = "Terraform module which creates RDS Aurora resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/rds-aurora/aws"
      topics       = ["aws", "rds", "rds-aurora", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-redshift = {
      description  = "Terraform module which creates Redshift resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/redshift/aws"
      topics       = ["aws", "redshift", "redshift-cluster", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-s3-bucket = {
      description  = "Terraform module which creates S3 bucket resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws"
      topics       = ["aws", "aws-s3", "s3", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-s3-object = {
      description  = "Terraform module which creates S3 object resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/s3-object/aws"
      topics       = ["aws", "s3", "aws-s3", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-security-group = {
      description  = "Terraform module which creates EC2-VPC security groups on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws"
      topics       = ["aws", "security-group", "aws-security-group", "aws-vpc", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-sns = {
      description  = "Terraform module which creates SNS resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/sns/aws"
      topics       = ["sns", "sns-topic", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-sqs = {
      description  = "Terraform module which creates SQS resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/sqs/aws"
      topics       = ["aws", "sqs", "aws-sqs", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-transit-gateway = {
      description  = "Terraform module which creates Transit Gateway resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/transit-gateway/aws"
      topics       = ["aws", "transit-gateway", "aws-vpc", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-vpc = {
      description  = "Terraform module which creates VPC resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws"
      topics       = ["aws", "aws-vpc", "vpc", "terraform-module"]
      auto_init    = false
    }

    terraform-aws-vpn-gateway = {
      description  = "Terraform module which creates VPN gateway resources on AWS"
      homepage_url = "https://registry.terraform.io/modules/terraform-aws-modules/vpn-gateway/aws"
      topics       = ["aws", "aws-vpn", "vpn-gateway", "terraform-module"]
      auto_init    = false
    }

    #######################
    # Special repositories
    #######################
    meta = {
      description  = "Meta-configurations for repositories, teams, files in terraform-aws-modules organization"
      homepage_url = "https://github.com/terraform-aws-modules"
      topics       = ["terraform-configurations", "terraform-github", "terraform-managed", "open-source-tooling"]
      auto_init    = false
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
    //    "terraform-aws-sns/master" = {
    //    }
  }

  ########
  # TEAMS
  ########
  # Privacy = {closed, secret}
  teams = {
    aws-eks = {
      privacy = "closed"
    }
  }

  # Team/Repository = {pull, triage, push, maintain, admin}
  team_repositories = {
    "aws-eks/terraform-aws-eks" = "push"
  }

  # Role = {member, maintainer}
  team_memberships = {
    barryib = {
      team = "aws-eks"
      role = "member"
    }

    max-rocket-internet = {
      team = "aws-eks"
      role = "member"
    }

  }

  members = [
    "barryib",
    "max-rocket-internet",
    "brandonjbjelland",
    "bryantbiggs"
  ]

  admins = ["antonbabenko"]

}
