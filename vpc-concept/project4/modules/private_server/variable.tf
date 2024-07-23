variable "tgw_route_table_id" {
  default = "sorry"
}

variable "tgw_vpc_attatchment_name" {
  default = "my_tgw_vpc_attatchment"
}
variable "cidrs" {
  default = ["0.0.0.0/0"]
}

variable "tgw_id" {
  default = "my-tgw"
}
variable "route_table_name" {
  default = "some"
}

variable "vpc_name" {
  default = "my-vpc"
}

variable "key_name" {
  default = "my-key"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "subnet_name" {
  default = "my-subnet"
}

variable "sg_id" {
  default = "my-sg"
}

variable "instance_name" {
  default = "my-instance"
}

variable "env" {
  default = "my-env"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "some"
}


variable "cidr_block" {
  default = "some"
}

variable "subnet_cird_block" {
  default = "some"
}

variable "sg_name" {
  default = "my-sg"
}


# Types of variables
# 1. some from agrument 
# 2. some taker form resource attribute


