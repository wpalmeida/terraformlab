resource "oci_core_subnet" "restore_test_backup-subnet" {
    cidr_block = var.subnet_vcn
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.restore_test_backup-vcn.id
    display_name = "restore_test_backup-hub-sub"
    route_table_id = oci_core_route_table.terraform_route_table.id
    security_list_ids = [oci_core_security_list.terraform_security_list.id]
}