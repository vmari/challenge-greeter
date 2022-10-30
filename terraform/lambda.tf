module "lambda_security_group" {
  source              = "terraform-aws-modules/security-group/aws"
  version             = "~> 4.0"
  name                = "lambda-sg"
  description         = "Security group for AWS-Lambda"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["http-80-tcp", "https-443-tcp"]
  egress_rules        = ["all-all"]
  tags = {
    Name = "challenge-greeter"
  }
}
