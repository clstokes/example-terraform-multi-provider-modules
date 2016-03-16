variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {}

provider "aws" {
  alias      = "sg_module"
  region     = "${var.region}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_security_group" "allow_all" {
  provider    = "aws.sg_module"
  name        = "allow_all"
  description = "Allow all inbound traffic"
}
