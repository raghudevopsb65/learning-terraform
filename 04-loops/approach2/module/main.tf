resource "aws_instance" "web" {
  ami           = "ami-0eccf89e870877654"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform"
  }
}
