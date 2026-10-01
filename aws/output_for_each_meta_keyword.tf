output "ec2_instance_name_fetch" {
  value = [for instance in aws_instance.aditya_instance : instance.tags["Name"]]
}
output "ec2_instance_type_fetch" {
  value = [for instance in aws_instance.aditya_instance : instance.instance_type]
}
 output "ec2_instance_ami_fetch" {
  value = [for instance in aws_instance.aditya_instance : instance.ami]
}
output "ec2_instance_public_ip_fetch" {
  value = [for instance in aws_instance.aditya_instance : instance.public_ip]
}
output "ec2_instance_private_ip_fetch" {
  value = [for instance in aws_instance.aditya_instance : instance.private_ip]
}