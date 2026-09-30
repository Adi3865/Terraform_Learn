# # Key pair create

# resource "aws_key_pair" "aditya_key_pair" {
#   key_name   = "terraform_pass_key"
#   public_key = file("terraform_pass_key.pub")
# }

# # VPC security group create

# resource "aws_default_vpc" "default" {}

# resource "aws_security_group" "aditya_security_group" {
#   name        = "my_security_group"
#   description = "Allow SSH and HTTP inbound traffic"
#   vpc_id      = aws_default_vpc.default.id

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "Allow SSH access from anywhere"
#   }

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "Allow HTTP access from anywhere"
#   }

#   ingress {
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#     description = "Allow HTTPS access from anywhere"
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# # EC2 instance create

# resource "aws_instance" "aditya_instance" {
#   key_name          = aws_key_pair.aditya_key_pair.key_name
#   security_groups   = [aws_security_group.aditya_security_group.name]
#   instance_type     = "t2.micro"
#   ami               = "ami-0fa99aa8f97f9e30b" # Amazon Linux 2 AMI (HVM), SSD Volume Type



#   root_block_device {
#     volume_size = 8
#     volume_type = "gp2"
#   }

#   tags = {
#     Name = "aditya_instance"
#   }
# }