resource "ansible_host" "monitor_mgt" {
  name = var.vm_mgt_ip
  variables = {
    ansible_user                 = var.mesh_local_user
    ansible_ssh_private_key_file = "../terraform/messh"
    ansible_ssh_common_args      = "-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
    DATADOG_API_KEY              = var.datadog_api_key
    DATADOG_SITE                 = var.datadog_site
    MSM_LOCATION                 = var.msm_location
  }
}
