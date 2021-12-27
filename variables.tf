#vpc
variable "name" {
  description = "The specification of module name."
  type        = string
  default     = ""
}

variable "vpc_cidr_block" {
  description = "The cidr block of VPC information."
  type        = string
  default     = "172.16.0.0/16"
}

variable "vs_cidr_block" {
  description = "The cidr block of VSwitch information."
  type        = string
  default     = "172.16.0.0/21"
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

#alicloud_slb_load_balancer
variable "slb_address_type" {
  description = "The specification of the slb intranet."
  type        = string
  default     = "intranet"
}

variable "slb_spec" {
  description = "The specification of the slb spec."
  type        = string
  default     = "slb.s2.small"
}

variable "slb_tags_info" {
  description = "The specification of the slb tags info."
  type        = string
  default     = ""
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
variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = ""
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = ""
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = ""
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = ""
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

variable "data_disks_name" {
  description = "The name of the data disk."
  type        = string
  default     = ""
}

variable "ecs_size" {
  description = "The specification of the ecs size."
  type        = number
  default     = 1200
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "cloud_efficiency"
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = ""
}

variable "encrypted" {
  description = "Encrypted the data in this disk."
  type        = bool
  default     = false
}

#alicloud_oss_bucket
variable "oss_bucket" {
  description = "The bucket name of OSS."
  type        = string
  default     = ""
}

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

variable "dns_name" {
  description = "The name of DNS."
  type        = string
  default     = ""
}