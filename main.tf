provider "aws" {
  access_key = "AKIAJ5OANWIZNFLAGEDA"
  secret_key = "J3qcDn5fkv1e5gFENFuMnfLF62EbgH0MsuM3kO9z"
  region     = "us-east-1"
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  # Inbound HTTP from anywhere
  ingress {
    from_port   = "${var.server_port}"
    to_port     = "${var.server_port}"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
