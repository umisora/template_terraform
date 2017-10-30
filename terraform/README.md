# Terraform & Packer for wordpress04

## これはなに

本ディレクトリは以下の Terraform コードの実行環境について記載したモノです。

## Terraform のインストール

### インストール

MacのBrewでTerraformを複数バージョン持つのは面倒なのでtfenvを使用する
https://github.com/kamatama41/tfenv

## AWSのクレデンシャルの用意

`.aws/credentials`, `.aws/profile` の準備 (esaに記述予定)

`corp_aws` のProfileを事前に作成しておいて下さい。

## 実行

`tfstate_bucket` で例を示す。基本的には `${app_name}/module/` ディレクトリで実施する。

```
$ cd terraform/tfstate_bucket/module/
```

### コマンド実行の準備

workspaceの選択
```
$ terraform workspace select corp_aws
```

tfstateファイルの収集。`terraform.tfstate.d/<workspace_name>/` に収集される。
```
$ terraform get
```

### dry run

削除などに注意する。

```
$ terraform plan
```

### 適用

```
$ terraform apply
```

