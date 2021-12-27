#alicloud_slb_load_balancer
slb_spec      = "slb.s2.medium"
slb_tags_info = "update_slb_tags_info"

#alicloud_ga_accelerator
ga_duration = 3
ga_spec     = "3"

#alicloud_instance
name                       = "update-tf-ga-slb-ecs-cdn-oss"
system_disk_name           = "test_system_disk"
system_disk_description    = "test_system_disk_description"
internet_max_bandwidth_out = "20"

#alicloud_oss_bucket
oss_acl = "public-read"

#alicloud_cdn_service
cdn_service_enable       = "Off"
cdn_internet_charge_type = "PayByBandwidth"