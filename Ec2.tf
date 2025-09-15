resource "aws_instance" "this" {
  ami                     = "ami-046c2381f11878233"
  instance_type           = var.instance_type
}
resource "aws_instance" "web" {
  ami                     = "ami-046c2381f11878233"
  instance_type           = var.instance_type
  tags = {
    Name = "terraform-import"
  }
  user_data_replace_on_change = false


}

import {
  to = aws_instance.web
  id = "i-0241bd00ff6d7d954"
}