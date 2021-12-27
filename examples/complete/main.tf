data "alicloud_zones" "default" {
}

data "alicloud_images" "default" {
  name_regex = "^centos_6"
}

data "alicloud_instance_types" "default" {
  availability_zone = data.alicloud_zones.default.zones.0.id
}

module "example" {
  source = "../.."

  #vpc
  name              = var.name
  vpc_cidr_block    = "172.16.0.0/16"
  vs_cidr_block     = "172.16.0.0/21"
  availability_zone = data.alicloud_zones.default.zones.0.id

  #alicloud_slb_load_balancer
  slb_address_type = "intranet"
  slb_spec         = var.slb_spec
  slb_tags_info    = var.slb_tags_info

  #alicloud_ga_accelerator
  ga_duration        = var.ga_duration
  ga_auto_use_coupon = var.ga_auto_use_coupon
  ga_spec            = var.ga_spec

  #alicloud_instance
  instance_type              = data.alicloud_instance_types.default.instance_types.0.id
  system_disk_category       = "cloud_efficiency"
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = data.alicloud_images.default.images.0.id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  ecs_size                   = 1200
  data_disks_name            = "data_disks_name"
  category                   = "cloud_efficiency"
  description                = "tf-ga-slb-ecs-cdn-oss-description"
  encrypted                  = true

  #alicloud_oss_bucket
  oss_bucket = "bucket-terraform-20211227"
  oss_acl    = var.oss_acl

  #alicloud_cdn_service
  cdn_service_enable       = var.cdn_service_enable
  cdn_internet_charge_type = var.cdn_internet_charge_type

}
