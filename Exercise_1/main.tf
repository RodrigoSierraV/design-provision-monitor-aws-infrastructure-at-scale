# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "AKIAXJT"
  secret_key = "TYX21uI/"
  region = "sa-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2

module "t2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "Udacity T2"
  instance_count         = 4

  ami                    = "ami-0bd91caaa9bc42cf3"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-26128340"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
# TODO: provision 2 m4.large EC2 instances named Udacity M4

module "m4_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "Udacity M4"
  instance_count         = 2

  ami                    = "ami-0bd91caaa9bc42cf3"
  instance_type          = "m4.large"
  subnet_id              = "subnet-26128340"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
