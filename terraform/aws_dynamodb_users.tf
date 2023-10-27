resource "aws_dynamodb_table" "this" {
  name           = "users-5cc68fbf-2da6-4281-b280-b24904bc9d40"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "this" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key

  item = <<ITEM
{
  "id": {"S": "1"},
  "first_name": {"S": "Daniel"},
  "last_name": {"S": "Sanches"}
}
ITEM
}