resource "aws_instance" "web" {
  ami           = "ami-0eccf89e870877654"
  instance_type = var.instance_type == "null" ? "t3.micro" : var.instance_type

  tags = {
    Name = "terraform"
  }
}

variable "instance_type" {
  default = null
}

