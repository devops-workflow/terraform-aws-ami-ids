# Lookups on marketplace seem much slower than others

# TODO: add variables for AmazonLinux version and try for Ubuntu

locals {
  names = "amazonlinux,ecs,ubuntu"

  owners = "${join(",", list(
    var.ami_owners["amazon"],
    var.ami_owners["amazon"],
    var.ami_owners["canonical"]
  ))}"

  patterns = "${join(",", list(
    "amzn-ami-hvm-${var.ami_version_amazonlinux}-x86_64-gp2",
    "amzn-ami-${var.ami_version_ecs}-amazon-ecs-optimized",
    "ubuntu/images/hvm-ssd/ubuntu-${var.ami_version_ubuntu}-amd64-server-*"
  ))}"
}

# CentOS: CentOS Linux 7 x86_64 HVM EBS*
# Fedora: Fedora-Cloud-Base-27-1.6.x86_64-us-west-2-HVM-gp2-0

data "aws_ami" "ami" {
  count       = "${length(split(",", local.names))}"
  most_recent = true
  owners      = ["${element(split(",", local.owners),count.index)}"]

  filter {
    name   = "name"
    values = ["${element(split(",", local.patterns),count.index)}"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
