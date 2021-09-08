resource "oci_core_boot_volume" "test_boot_volume" {
    compartment_id = var.compartment_ocid
    source_details {
        id = data.oci_core_boot_volume_backups.test_boot_volume_backups.boot_volume_backups.0.id
        type = "bootVolumeBackup"
    }
    availability_domain = var.availability_domain
    display_name = "backup_restore_terraform"
}