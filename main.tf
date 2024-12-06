data "akamai_group" "my_group" {
     group_name   = "Akamai Technologies - Assets-1-3CV382"
     contract_id  = "1-3CV382"     
}

data "akamai_property" "my_property" {
    name = "zb.testrun.com"
    version = "30"
}

data "akamai_appsec_configuration" "my_sec_config" {
    name = "Akamai Labs"
}


output "my_group" {
    value = data.akamai_group.my_group.id
}

output "my_property" {
    value = data.akamai_property.my_property.id
}

output "my_sec_config" {
    value = data.akamai_appsec_configuration.my_sec_config.output_text
}