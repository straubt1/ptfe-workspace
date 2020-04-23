variable "name_count" {
  description = "The number of names to produce."
  default     = 3
}

variable "name_prefix" {
  description = "The prefix string to start each name with."
  default     = null
}

resource "random_pet" "names" {
  count  = var.name_count
  prefix = var.name_prefix
}

resource "random_pet" "single_name" {
  prefix = var.name_prefix
}

resource "random_uuid" "main" {}

output "names" {
  value = random_pet.names.*.id
}

resource "random_uuid" "main2" {
  provisioner "local-exec" {
    command = <<EOT
ls -ll /usr/local/bin/
printenv
EOT
  }
}
