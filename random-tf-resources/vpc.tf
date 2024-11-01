module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.16.0"

  name = var.vpc_name
  cidr = "10.0.0.0/16"

  azs             = ["eu-central-2a", "eu-central-2b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  public_subnet_tags = {
    Tier = "public"
  }

  private_subnet_tags = {
    Tier = "private"
  }

  tags = {
    Terraform   = "true"
    Environment = "dev"
    Owner       = "maria.tzanidaki"
  }
}
