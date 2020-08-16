variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-1"
}
variable "vpcCIDRblock"{
  default = "192.168.0.0/16"
}
variable "instanceTenancy" {
  default = "default"
}
