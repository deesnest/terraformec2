resource "aws_instance" "myec"  {
ami = "ami-015823f149dddbd48"
instance_type = "t2.medium"

tags = {
Name = "terracentos"
}
}
