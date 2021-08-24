resource "oci_core_boot_volume" "test_boot_volume" {
    compartment_id = var.compartment_ocid
    source_details {
        id = "ocid1.bootvolumebackup.oc1.sa-saopaulo-1.abtxeljreapvn4nknubhpyurcv5wexun7z2j4m65zoaipgbhvgigyuwm4x2a"
        type = "bootVolumeBackup"
    }
    availability_domain = var.availability_domain
    display_name = "backup_restore_terraform"
}