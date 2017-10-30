provider "aws" {
  region              = "ap-northeast-1"
  profile             = "production"
  allowed_account_ids = ["${module.global.account_ids["production"]}"]

  assume_role {
    role_arn     = "arn:aws:iam::xxxxxxx:role/assume_role_name"
    session_name = "terraform"
  }
}
