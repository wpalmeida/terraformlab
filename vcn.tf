resource "oci_core_vcn" "restore_test_backup-vcn" {
    compartment_id = var.compartment_ocid
    cidr_block = var.vcn_cidr
    display_name = "restore_test_backup-vcn"
}