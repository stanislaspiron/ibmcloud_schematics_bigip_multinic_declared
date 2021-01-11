data "ibm_is_subnet" "f5_management_subnet" {
  identifier = var.management_subnet_id
}

locals {
  secondary_subnets = compact(list(var.cluster_subnet_id, var.internal_subnet_id, var.external_subnet_id))
}

resource "random_uuid" "namer" {}

resource "ibm_is_security_group" "f5_management_sg" {
  identifier = var.management_security_group
}

resource "ibm_is_security_group" "f5_tmm_sg" {
  identifier = var.tmm_security_group
}
