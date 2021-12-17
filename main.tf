provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.small"

  tags = {
    Name = "enouvo-2"
  }
}
