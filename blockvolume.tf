resource "oci_core_volume" "test_volume" {
    #Required
    compartment_id = var.compartment_ocid

    source_details {
        #Required
        id = "ocid1.volumebackup.oc1.sa-saopaulo-1.abtxeljrfbtbt5r42d6ribtwaiumz3hwxyqgmv54kcg73hhdngxkze5zumcq"
        type = "volumeBackup"
    }
    availability_domain = var.availability_domain
    display_name = "block_restore_terraform"
}