Alibaba Cloud Table Store (OTS) Terraform Module
terraform-alicloud-table-store
=====================================================================

English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-table-store/blob/master/README-CN.md)

Terraform module which creates slb http resources on Alibaba Cloud.

These types of resources are supported:

* [OTS Instance](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/ots_instance.html.markdown)
* [OTS Instance_Attachment](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/ots_instance_attachment.html.markdown)
* [OTS Table](https://github.com/terraform-providers/terraform-provider-alicloud/blob/master/website/docs/r/ots_table.html.markdown)

## Terraform versions

The Module requires Terraform 0.12 and Terraform Provider AliCloud 1.56.0+.

## Usage

```hcl
module "ots" {
  source  = "terraform-alicloud-modules/table-store/alicloud"
  region  = "cn-hangzhou"
  profile = "Your-Profile-Name"
  instance_name = "tf-ots-instance"
  description   = "tf-ots-instance"
  accessed_by   = "Any"
  instance_type = "HighPerformance"
  tags = {
    Created = "TF"
    For     = "Building table"
  }
  vpc_name   = "default"
  vswitch_id = "vsw-1q214xxxx"
  table_name = "tf_ots_table"
  primary_key = [
    {
      name = "pk1"
      type = "Integer"
    },
    {
      name = "pk2"
      type = "Integer"
    },
    {
      name = "pk3"
      type = "Binary"
    },
    {
      name = "pk4"
      type = "String"
    },
  ]
  time_to_live = -1
  max_version  = 1
}

```

## Examples

* [Basic example](https://github.com/terraform-alicloud-modules/terraform-alicloud-table-store/tree/master/examples/basic-example)

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`.
If you have not set them yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

Submit Issues
-------------
If you have any problems when using this module, please opening a [provider issue](https://github.com/terraform-providers/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

Authors
-------
Created and maintained by okingniko(@ZhuoranWang, okingniko@gmail.com)

License
----
Apache 2 Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
