resource "oci_core_security_list" "terraform_security_list" {
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_vcn.restore_test_backup-vcn.id
    display_name = "terraform-sl"
    egress_security_rules {
        destination = "0.0.0.0/0"
        protocol = "6"
    }
    ingress_security_rules {
        protocol = "6"
        source = "0.0.0.0/0"
    }
}