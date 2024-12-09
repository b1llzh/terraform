resource "akamai_appsec_configuration" "my-sec-config-2nd" {
    name = "sclub-zbtestrun-2nd"
    description = "My app sec configuration for sclub exercise - 2nd"
    contract_id = data.akamai_group.my_group.contract_id
    group_id = 128578  # can this be referenced from somewhere?
    host_names = ["zbff.testrun.com"]
}

resource "akamai_appsec_security_policy" "my-sec-policy" {
    config_id = akamai_appsec_configuration.my-sec-config-2nd.config_id
    default_settings = true
    security_policy_name = "Sclub-Terraform-2nd"
    security_policy_prefix = "zbtf"
}

resource "akamai_appsec_security_policy" "my-sec-policy-addition" {
    config_id = akamai_appsec_configuration.my-sec-config-2nd.config_id
    default_settings = true
    security_policy_name = "Sclub-Terraform-2nd-add"
    security_policy_prefix = "zb02"
}

output "my-sec-config-2nd" {
    value = akamai_appsec_security_policy.my-sec-policy.id
}