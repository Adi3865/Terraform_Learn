# Fetch the public IP of the EC2 instance that you created in the previous step in the AWS provider. This output will display the public IP address of the instance after it has been created.



output "ec2_public_if_fetch" {
    value = aws_instance.aditya_instance.public_ip
}
output "ec2_private_if_fetch" {
    value = aws_instance.aditya_instance.private_ip
}
output "ec2_instance_DNS_fetch" {
    value = aws_instance.aditya_instance.public_dns
}
