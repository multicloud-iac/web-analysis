
provider "aws" {
  region = var.aws_region
}

data "aws_ami" "latest" {
  most_recent = true
  owners      = [var.ami_owner]

  filter {
    name   = "name"
    values = [var.ami_search_name]
  }
}

resource "aws_instance" "ubuntu" {
  ami               = data.aws_ami.latest.id
  instance_type     = var.instance_type
  availability_zone = "${var.aws_region}c"

  tags = merge({ "Name" = var.name }, var.tags)

}
