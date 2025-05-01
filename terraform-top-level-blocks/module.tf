################################ 
# ROOT MODULES
################################

### PRIVATE MODULES / PUBLIC MODULES

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "module-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]          # (data source)
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]       # variable
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"] # variable

  enable_nat_gateway = true # variable(bool)
  enable_vpn_gateway = true # variable(bool)

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
