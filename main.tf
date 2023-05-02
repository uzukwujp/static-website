provider "aws" {
  region = "eu-west-2"
}


module "static-website" {
    source = "./modules/static-website"
    for_each = var.s3_bukets
    bucket_name = each.value["bucketName"]
    domain_name = each.value["domainName"]
}