variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {
  count         = var.no-of-instances
  ami           = "ami-0eccf89e870877654"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-${count.index + 1}"
  }
}
