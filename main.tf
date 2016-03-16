variable "one_aws_access_key" {}
variable "one_aws_secret_key" {}

variable "two_aws_access_key" {}
variable "two_aws_secret_key" {}

module "account_one" {
  source         = "./sg_module"
  region         = "us-east-1"
  aws_access_key = "${var.one_aws_access_key}"
  aws_secret_key = "${var.one_aws_secret_key}"
}

module "account_two" {
  source         = "./sg_module"
  region         = "us-west-2"
  aws_access_key = "${var.two_aws_access_key}"
  aws_secret_key = "${var.two_aws_secret_key}"
}
