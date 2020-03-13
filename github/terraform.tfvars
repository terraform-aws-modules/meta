github_organization = "terraform-modules" # to be changed to terraform-aws-modules later

admins = ["antonbabenko"]

repositories = {
  tf-aws-vpc = {
    description = "Something here"
    topics      = ["aws", "terraform-module"]
  }

  tf-aws-alb = {
    description = "Something here2"
    topics      = ["aws", "terraform-module"]
  }
}

branch_protections = {
  "tf-aws-alb/master" = {

  }
}

teams = {
  aws-alb = {
    description = ""
    privacy     = "secret"
  }
  aws-eks = {
    privacy = "secret"
  }
  aws-ecs = {
    privacy = "closed"
  }
}

team_repositories = {
  "aws-alb/tf-aws-alb" = "admin"
  "aws-alb/tf-aws-vpc" = "triage"
}

team_memberships = {
  betajobot = {
    team = "aws-alb"
    role = "member"
  }
  //  antonbabenko = {
  //    team = "aws-alb"
  //    role = "maintainer"
  //  }
}

