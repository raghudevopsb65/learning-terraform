resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = "ami-0eccf89e870877654"
  instance_type = var.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {}
variable "instance_count" {}
