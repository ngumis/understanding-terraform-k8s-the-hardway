#Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}

# data.aws_availability_zones.available.names
# ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d","us-east-1e","us-east-1f"]
# (terraform apply -target data.aws_ami.ami)
data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}
