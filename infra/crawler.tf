resource "aws_glue_catalog_database" "db" {
  name = "RAIS"
}

resource "aws_glue_crawler" "RAIS" {
  database_name = aws_glue_catalog_database.db.name
  name          = "s3_crawler_RAIS"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.datalake.bucket}/staging/"
  }

  configuration = <<EOF
{
   "Version": 1.0,
   "Grouping": {
      "TableGroupingPolicy": "CombineCompatibleSchemas" }
}
EOF

  tags = {
    MODULO   = "1"
  }
}
