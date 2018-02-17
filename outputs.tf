output "ami_id" {
  description = "AMI ID for Linux distribution"
  value       = "${element(data.aws_ami.ami.*.id, index(split(",", local.names), var.distribution))}"
}

output "ami_ids" {
  description = "All AMI IDs"
  value       = "${data.aws_ami.ami.*.id}"
}

output "ami_names" {
  description = "All AMI Names"
  value       = "${data.aws_ami.ami.*.name}"
}

output "distro_names" {
  description = "All distribution names. Can be used to index the other lists"
  value       = "${split(",", local.names)}"
}
