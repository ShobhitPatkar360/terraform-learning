
variable "key_name" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "name" {
  type        = string
  description = "It is the name of instance that will be assigned to name tag"
}

variable "environment" {
  type = string
}

variable "sg-id" {
  type = string
}