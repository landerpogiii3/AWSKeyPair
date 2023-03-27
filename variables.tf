variable "key-pair" {
  description = "The name of the KeyPair to create"
  type = string
  default = null
}

variable "aws_region" {
  description = "Preferred AWS Region"
  type = string
  default = "ap-southeast-1"
}
