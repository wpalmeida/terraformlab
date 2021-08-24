resource "oci_core_volume_attachment" "test_volume_attachment" {
    #Required
    attachment_type = "iscsi"
    instance_id = oci_core_instance.terraform_instance.id
    volume_id = oci_core_volume.test_volume.id
}