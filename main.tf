resource "alicloud_vpc" "default" {
  vpc_name   = var.name
  cidr_block = var.vpc_cidr_block
}

resource "alicloud_vswitch" "default" {
  vswitch_name = var.name
  cidr_block   = var.vs_cidr_block
  vpc_id       = alicloud_vpc.default.id
  zone_id      = var.availability_zone
}

resource "alicloud_security_group" "default" {
  name   = var.name
  vpc_id = alicloud_vpc.default.id
}

resource "alicloud_slb_load_balancer" "default" {
  load_balancer_name = var.name
  address_type       = var.slb_address_type
  load_balancer_spec = var.slb_spec
  vswitch_id         = alicloud_vswitch.default.id
  tags = {
    info = var.slb_tags_info
  }
}

resource "alicloud_ga_accelerator" "default" {
  duration        = var.ga_duration
  auto_use_coupon = var.ga_auto_use_coupon
  spec            = var.ga_spec
}

resource "alicloud_instance" "default" {
  instance_name              = var.name
  availability_zone          = var.availability_zone
  security_groups            = [alicloud_security_group.default.id]
  vswitch_id                 = alicloud_vswitch.default.id
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = var.image_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks {
    name        = var.data_disks_name
    size        = var.ecs_size
    category    = var.category
    description = var.description
    encrypted   = var.encrypted
  }
}

resource "alicloud_oss_bucket" "default" {
  bucket = var.oss_bucket
  acl    = var.oss_acl
}

data "alicloud_cdn_service" "default" {
  enable               = var.cdn_service_enable
  internet_charge_type = var.cdn_internet_charge_type
}