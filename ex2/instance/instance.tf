resource "aws_instance" "web" {
  ami                    = "ami-0eccf89e870877654"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "terraform"
  }
}
