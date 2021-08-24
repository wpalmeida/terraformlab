resource "oci_core_internet_gateway" "terraform_igw" {
    compartment_id = var.compartment_ocid
    display_name = "terraform-igw"
    vcn_id = oci_core_vcn.restore_test_backup-vcn.id
}