# save required info to ssm for serverless
resource "aws_ssm_parameter" "sg_id" {
  name        = "/lambda/security_group"
  description = "Lambda security group id"
  type        = "String"
  tier        = "Standard"
  value       = module.lambda_security_group.security_group_id
}

resource "aws_ssm_parameter" "private_subnet" {
  name        = "/lambda/private_subnet"
  description = "Private subnet"
  type        = "String"
  tier        = "Standard"
  value       = module.vpc.private_subnets[0]
}