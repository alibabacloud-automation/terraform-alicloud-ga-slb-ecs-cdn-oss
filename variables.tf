variable "name" {
  description = "The specification of module name."
  type        = string
  default     = "tf-ga-slb-ecs-cdn-oss"
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = "tf-ga-slb-ecs-cdn-oss-description"
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = "ecs.n4.large"
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = "system_disk"
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = "system_disk_description"
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = "ubuntu_18_04_64_20G_alibase_20190624.vhd"
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
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
  default     = "create for internet"
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

variable "vpc_cidr_block" {
  description = "The cidr block of VPC information."
  type        = string
  default     = "192.168.1.0/24"
}

variable "vs_cidr_block" {
  description = "The cidr block of VSwitch information."
  type        = string
  default     = "192.168.1.0/24"
}

variable "dns_name" {
  description = "The name of DNS."
  type        = string
  default     = "starmove.com"
}

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

variable "cdn_internet_charge_type" {
  description = "The internet charge type of CDN."
  type        = string
  default     = "PayByTraffic"
}

variable "oss_bucket" {
  description = "The bucket name of OSS."
  type        = string
  default     = "tf-test-aliyun-ga"
}

variable "oss_acl" {
  description = "The bucket acl of OSS."
  type        = string
  default     = "private"
}
