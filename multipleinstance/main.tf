resource "aws_key_pair" "terraform-demo" {
  key_name   = "mph"
  public_key = file("mph")
}

resource "aws_instance" "my-instance" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.terraform-demo.key_name
  user_data     = <<-EOF
                  #!/bin/bash
                  git --version
                  EOF

  tags = {
    Name  = "Terraform-${count.index + 1}"
    Batch = "5AM"
  }
}
