# Fetch the public IP of the EC2 instance that you created in the previous step in the AWS provider. This output will display the public IP address of the instance after it has been created.
# this is use when you have created multiple resources in the AWS provider. If you have created a single resource, then you can use the outputs_single_resource_created.tf file to fetch the public IP of the EC2 instance that you created in the previous step in the AWS provider. This output will display the public IP address of the instance after it has been created.
# Syntax: aws_instance.<resource_name>.<attribute_name>[*].action
  


output "ec2_public_if_fetch" {
    value = aws_instance.aditya_instance[*].public_ip
}
output "ec2_private_if_fetch" {
    value = aws_instance.aditya_instance[*].private_ip
}
output "ec2_instance_DNS_fetch" {
    value = aws_instance.aditya_instance[*] .public_dns
}
