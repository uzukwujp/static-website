provider "aws" {
  region = "eu-west-2"
}


module "static-website" {
    source = "./modules/static-website"
    for_each = toset(var.s3_bukets)
    bucket_name = each.value
}