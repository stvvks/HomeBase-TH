# Best Practice is to input variables so like asked, keeping the modularity & easy to use/customize
provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "website" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = var.tags
}

output "website_url" {
  value = aws_s3_bucket.website.website_endpoint
}

