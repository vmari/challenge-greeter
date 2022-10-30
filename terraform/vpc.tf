module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 3.0"

  name                 = "challenge-vpc"
  cidr                 = "10.99.0.0/18"
  create_igw           = true
  enable_nat_gateway   = false
  azs                  = ["us-east-2a", "us-east-2b"]
  public_subnets       = ["10.99.0.0/24", "10.99.1.0/24"]
  private_subnets      = ["10.99.2.0/24", "10.99.3.0/24"]
  enable_dns_hostnames = true

  tags = {
    Name = "challenge-greeter"
  }
}

