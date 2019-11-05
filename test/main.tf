variable "token" {}
variable "workspace" {}
data "terraform_remote_state" "stuff" {
  backend = "remote"

  config = {
    hostname     = "bootcamp-tfe.digitalinnovation.dev"
    organization = "hashicorp"
    token         = "${var.token}"
    workspaces = {
      name = "${var.workspace}"
    }
  }
}

output "state" {
  value = data.terraform_remote_state.stuff
}
