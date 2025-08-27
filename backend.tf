terraform {
  backend "s3" {
    bucket        = "jcreforme-terraform-state-bucket"
    key           = "ec2/terraform.tfstate"
    region        = "us-east-2"
    use_lockfile  = true
    encrypt       = true
  }
}
