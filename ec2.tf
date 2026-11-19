data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = data.aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              dnf install -y httpd
              systemctl enable httpd
              systemctl start httpd

              echo "<h1>Terraform Web Server Successfully Deployed</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "project1-webserver"
  }
}
