variable "ami_owners" {
  description = "AMI Owner IDs"
  type        = "map"

  default = {
    amazon    = "amazon"
    centos    = "679593333241" # Marketplace
    canonical = "099720109477"
    fedora    = "125523088429"
  }
}

variable "ami_version_amazonlinux" {
  description = "Amazon Linux version to get"
  default     = "*"
}

variable "ami_version_ecs" {
  description = "Amazon ECS Optimized version to get"
  default     = "*"
}

variable "ami_version_ubuntu" {
  description = "Ubuntu version to get. Default is 16.04"
  default     = "xenial-16.04"
}

variable "distribution" {
  description = "Linux distribution for AWS AMI, supported: amazonlinux, ecs, ubuntu"
  default     = "amazonlinux"
}
