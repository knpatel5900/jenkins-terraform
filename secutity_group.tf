resource "aws_vpc" "Terraform_VPC" {
 cidr_block = var.vpcCIDRblock
 instance_tenancy = var.instanceTenancy

  tags = {
    Name = "Terraform_VPC"
  }
}

resource "aws_security_group" "terraform_sg" {
  vpc_id       = aws_vpc.Terraform_VPC.id
  name         = "terrform_sg"
  description  = "My Terraform VPC Security Group"
ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
   Name = "terraform_sg"
   Description = "My VPC Security Group"
}
}
