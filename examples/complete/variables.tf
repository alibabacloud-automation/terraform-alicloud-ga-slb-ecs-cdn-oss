#vpc
variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "tf-ga-slb-ecs-cdn-oss"
}

#alicloud_slb_load_balancer
variable "slb_spec" {
  description = "The specification of the slb spec."
  type        = string
  default     = "slb.s2.small"
}

variable "slb_tags_info" {
  description = "The specification of the slb tags info."
  type        = string
  default     = "slb_tags_info"
}

#alicloud_ga_accelerator
variable "ga_duration" {
  description = "The duration of GA."
  type        = number
  default     = 1
}

variable "ga_auto_use_coupon" {
  description = "The auto use coupon of GA."
  type        = bool
  default     = true
}

variable "ga_spec" {
  description = "The spec of DNS."
  type        = string
  default     = "1"
}

#alicloud_instance
variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = "system_disk_name"
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = "system_disk_description"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

#alicloud_oss_bucket
variable "oss_acl" {
  description = "The bucket acl of OSS."
  type        = string
  default     = "private"
}

#alicloud_cdn_service
variable "cdn_service_enable" {
  description = "Setting the value to On to enable the service."
  type        = string
  default     = "On"
}

variable "cdn_internet_charge_type" {
  description = "The internet charge type of CDN."
  type        = string
  default     = "PayByTraffic"
}