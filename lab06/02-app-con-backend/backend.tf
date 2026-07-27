terraform {
  backend "s3" {
    bucket         = "tfstate-formatec-101374115496-mv"
    key            = "lab06/app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tflock-formatec-mv"
    encrypt        = true
  }
}