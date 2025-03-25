output "this_ecs_id" {
  description = "The ID of the ecs."
  value       = alicloud_instance.default.id
}

output "this_slb_id" {
  description = "The ID of the slb."
  value       = alicloud_slb_load_balancer.default.id
}

output "this_vpc_id" {
  description = "The ID of the vpc."
  value       = alicloud_vpc.default.id
}

output "this_ecs_name" {
  description = "The name of the ecs."
  value       = alicloud_instance.default.instance_name
}

output "this_ga_accelerator_id" {
  description = "The ID of the ga accelerator."
  value       = alicloud_ga_accelerator.default.id
}

output "this_oss_bucket" {
  description = "The name of the oss bucket."
  value       = alicloud_oss_bucket.default.bucket
}

output "cdn_service_status" {
  description = "The status of the cdn service."
  value       = data.alicloud_cdn_service.default.status
}