resource "oci_core_route_table" "terraform_route_table" {
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.restore_test_backup-vcn.id
    display_name = "terraform-route"
    route_rules {
        network_entity_id = oci_core_internet_gateway.terraform_igw.id
        destination = "0.0.0.0/0"
    }
}