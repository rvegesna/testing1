provider "aws" {
   region = "us-east-1"
   access_key = "AKIAX5YGRPOABTYSO6UJ"
   secret_key = "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"
}
variable "ami_my" {
    default = "ami-0c02fb55956c7d316"
}
resource "aws_instance" "web" {
  ami           = "${var.ami_my}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld1"
  }
}
resource "aws_instance" "web1" {
  ami           = "${var.ami_my}"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld2"
  }
}

output "aws_outpt" {
  value = aws_instance.web.public_ip
}
