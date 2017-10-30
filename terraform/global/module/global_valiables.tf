variable "account_ids" {
  type = "map"

  default = {
    production = xxxxx
    develop = xxxx
  }
}

variable "appname" {}

output "account_ids" {
  value = "${var.account_ids}"
}

output "appname" {
  value = "${var.appname}"
}
