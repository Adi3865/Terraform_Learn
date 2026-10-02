resource "aws_s3_bucket" "remote_s3_bucket" {
    bucket = "terraform-remote-infra-277707143657"
    
    tags = {
        Name        = "Remote Infra Bucket"
        Environment = "Production"
    }
  
}