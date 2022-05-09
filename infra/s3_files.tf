resource "aws_s3_bucket_object" "tratamento" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/tratamento.py"
  acl    = "private"
  source = "../ETL/tratamento.py"
  etag   = filemd5("../ETL/tratamento.py")
}