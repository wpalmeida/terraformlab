resource "oci_core_instance" "terraform_instance" {
  availability_domain = var.availability_domain
  compartment_id = var.compartment_ocid
  display_name = "restore_sql_terraform"
  shape = "VM.Standard.E4.Flex"
  shape_config {
      memory_in_gbs = 16
      ocpus = 1
  }
  source_details {
    source_id = oci_core_boot_volume.test_boot_volume.id
    source_type = "bootVolume"
  }
  create_vnic_details {
    subnet_id = oci_core_subnet.restore_test_backup-subnet.id
  }
}
output "public_ip" {
  value = oci_core_instance.terraform_instance.public_ip
}