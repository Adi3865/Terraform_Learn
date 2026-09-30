# Fetch the public IP of the EC2 instance that you created in the previous step in the AWS provider. This output will display the public IP address of the instance after it has been created.
# this is only when you have created a single resource in the AWS provider. If you have created multiple resources, then you can use the outputs_multiple_resource_created.tf file to fetch the public IP of the EC2 instance that you created in the previous step in the AWS provider. This output will display the public IP address of the instance after it has been created.



output "ec2_public_if_fetch" {
    value = aws_instance.aditya_instance.public_ip # for single resource created in the AWS provider. 
}
output "ec2_private_if_fetch" {
    value = aws_instance.aditya_instance.private_ip # for single resource created in the AWS provider.
}
output "ec2_instance_DNS_fetch" {
    value = aws_instance.aditya_instance.public_dns # for single resource created in the AWS provider.
}
