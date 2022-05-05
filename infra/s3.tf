resource "aws_s3_bucket" "datalake" {
  bucket = "${var.nome_bucket}-${var.conta}"
  acl    = "private"
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    MODULO = "1"
  }

}