variable "aditya_aws_instance_type" {
  default = "t2.micro"
  type    = string
}
variable "aditya_aws_instance_ami" {
  default = "ami-0fa99aa8f97f9e30b" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  type    = string
}
variable "aditya_aws_instance_key_name" {
  default = "terraform_pass_key"
  type    = string
}
variable "aditya_aws_instance_security_group" {
  default = "my_security_group"
  type    = string
}
variable "aditya_aws_instance_root_block_device_volume_size" {
  default = 8
  type    = number
}