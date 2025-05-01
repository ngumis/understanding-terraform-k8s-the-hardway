# creating vpc 
resource "aws_vpc" "aws_vpc" {

  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "kojitechs-vpc"
  }
} # 

## "RESOURCE_NAME.LOCAL_NAME.DESIRED_ARTR"
resource "aws_subnet" "subnet_1" {

  vpc_id            = local.vpc_id
  cidr_block        = var.subnet_1_cidr
  availability_zone = data.aws_availability_zones.available.names[0] # pull down

  tags = {
    Name = "subnet_1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = local.vpc_id
  cidr_block        = var.subnet_2_cidr
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = {
    Name = "subnet_2"
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.id
  instance_type = "t3.micro"
  # subnet_id = 

  tags = {
    Name = "web"
  }
}
