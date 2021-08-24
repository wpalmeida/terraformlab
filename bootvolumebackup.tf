data "oci_core_boot_volume_backups" "test_boot_volume_backups" {
    compartment_id = var.compartment_ocid

    boot_volume_id = "ocid1.bootvolume.oc1.sa-saopaulo-1.abtxeljrj7k7z763ijk2mvrgkgo3ckdoogtns4psfk4ta2j5szmyc6vodona"
#    display_name = var.boot_volume_backup_display_name
#    source_boot_volume_backup_id = oci_core_boot_volume_backup.test_boot_volume_backup.id
#    state = var.boot_volume_backup_state
}

output "block" {
  value = data.oci_core_boot_volume_backups.test_boot_volume_backups.boot_volume_backups
}