output "this_instance_id" {
  value = "${module.tf_ots_instance.id}"
}

output "this_instance_name" {
  value = "${module.tf_ots_instance.name}"
}

output "this_vpc_name" {
  value = "${module.tf_ots_instance_attachment.vpc_name}"
}

output "this_vpc_vswitch_id" {
  value = "${module.tf_ots_instance_attachment.vswitch_id}"
}

output "this_table_id" {
  value = "${module.tf_ots_table.id}"
}

output "this_table_name" {
  value = "${module.tf_ots_table.table_name}"
}
