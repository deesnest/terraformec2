resource "aws_instance" "<INSTANCE-NAME HERE>"  {
ami = "ami-015823f149dddbd48"
instance_type = "<MENTION-INSTANCE-TYPE HERE"
tags = {
Name = "terracentos"
}
}
