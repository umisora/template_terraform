terraform {
  required_version = "= 0.10.7"

  backend "s3" {
    profile      = "production"
    role_arn     = "arn:aws:iam::xxxxxxxx:role/assume_role"
    session_name = "terraform"
    bucket       = "appname-infra.tfstate"
    region       = "ap-northeast-1"
    key          = "tfstate_bucket.tfstate"
  }
}
