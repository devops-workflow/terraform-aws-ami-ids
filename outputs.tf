output "ami_id" {
  description = "AMI ID for Linux distribution requested"
  value       = "${element(data.aws_ami.ami.*.id, index(split(",", local.names), var.distribution))}"
}

output "ami_ids" {
  description = "List of all AMI IDs"
  value       = "${data.aws_ami.ami.*.id}"
}

output "ami_names" {
  description = "List of all AMI Names"
  value       = "${data.aws_ami.ami.*.name}"
}

output "distro_names" {
  description = "List of all distribution names. Can be used to index the other lists"
  value       = "${split(",", local.names)}"
}
