resource "aws_instance" "aw-testhost" {
  instance_type     = "x1.32xlarge"
  ami           = data.aws_ami.ubuntu.id
  availability_zone = "eu-west-2a"

  tags = {
     Name = "cpt-infracost-demo"
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
 }


