# Provider Credentials can be loaded via
# export VSPHERE_SERVER=""
# export VSPHERE_USERNAME=""
# export VSPHERE_PASSWORD=""
provider "vsphere" {
  allow_unverified_ssl = true
}

locals {
  datacenter_name      = "Datacenter"
  cluster_name         = "East"
  datastore_name       = "<DATASTORE_NAME>"
  network_name         = "VM Network"
  virtual_machine_name = "<VM_NAME>"
}

module "vm" {
  source  = "TFE_HOSTNAME/YOUR_ORG_NAME/vm/vsphere"
  version = "0.0.1"

  datacenter_name      = local.datacenter_name
  cluster_name         = local.cluster_name
  datastore_name       = local.datastore_name
  network_name         = local.network_name
  datacenter_name      = local.datacenter_name
  virtual_machine_name = local.virtual_machine_name
}
