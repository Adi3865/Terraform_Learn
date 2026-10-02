
resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "Terraform-DynamoDB-remote-infra"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockId"
  

  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    Name        = "Terraform-DynamoDB-remote-infra"
    Environment = "Production"
  }
}