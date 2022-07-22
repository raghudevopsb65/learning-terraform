resource "aws_instance" "web" {
  count         = length(var.instance_types)
  ami           = "ami-0eccf89e870877654"
  instance_type = var.instance_types[count.index]

  tags = {
    Name = "terraform-${count.index + 1}"
  }
}

variable "instances" {
  default = {
    instances = {
      t3.micro = 2,
      t3.small = 1
    }
  }
}
