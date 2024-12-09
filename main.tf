data "akamai_group" "my_group" {
     group_name   = "zbtestgrp"
     contract_id  = "1-1NC95D"     
}

data "akamai_property" "my_property" {
    name = "zbtestconfig"
    version = "241"
}

data "akamai_appsec_configuration" "my_sec_config" {
    name = "sclub-zbtestrun"
}


output "my_group" {
    value = data.akamai_group.my_group.id
}

output "my_property" {
    value = data.akamai_property.my_property.id
}

output "my_sec_config" {
    value = data.akamai_appsec_configuration.my_sec_config.id
}