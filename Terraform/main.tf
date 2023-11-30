# Specify the Provider being used - in this case AWS
provider "aws" {
  region = "us-west-2"
}
# Call on the locally stored module - in the case is a S3 bucket
module "website" {
  source = "./s3-website-module"

  bucket_name = "homebase-FTW"
  tags = {
    Environment = "Production"
  }
}
# The outputted "dont know if thats a word" result which would be the URL
output "website_url" {
   value = module.website.website_url
}
