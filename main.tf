
terraform {
  backend "s3" {
    bucket         = "terraform-state-saver"
    key            = "terraform.tfstate"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}



resource "aws_security_group" "example-sg" {
  name = "terraform-example-sg"
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
