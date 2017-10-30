resource "aws_s3_bucket" "apname-infra_tfstate_files" {
  bucket = "apname-infra.tfstate"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    AppName = "${module.global.appname}"
  }
}

resource "aws_s3_bucket_policy" "apname-infra_tfstate_files" {
  bucket = "${aws_s3_bucket.apname-infra_tfstate_files.id}"
  policy = "${data.aws_iam_policy_document.apname-infra_tfstate_bucket.json}"
}

data "aws_iam_policy_document" "apname-infra_tfstate_bucket" {
  statement {
    sid    = "apname-infra_tfstate_bucket"
    effect = "Allow"

    principals {
      type = "AWS"

      identifiers = [
        "arn:aws:iam::xxxxxxxxx:user/user_name",
      ]
    }

    actions = [
      "s3:*",
    ]

    resources = [
      "arn:aws:s3:::apname-infra.tfstate",
      "arn:aws:s3:::apname-infra.tfstate/*",
    ]
  }
}
