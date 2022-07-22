resource "aws_instance" "web" {
  count         = length(var.instance_types)
  ami           = "ami-0eccf89e870877654"
  instance_type = var.instance_types[count.index]

  tags = {
    Name = "terraform-${count.index + 1}"
  }
}

variable "instance_types" {
  default = ["t3.micro", "t3.small"]
}

// Requirement is , Create number of instances og the given instance types
