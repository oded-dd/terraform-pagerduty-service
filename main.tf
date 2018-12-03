locals {
  pagerduty_service_integration             = "${coalesce(var.subnet_group_name, module.elasticache_subnet_group.this_elasticache_subnet_group_name)}"
  enable_create_elasticache_subnet_group    = "${var.subnet_group_name == "" ? true : false}"

  elasticache_parameter_group_name          = "${coalesce(var.parameter_group_name, module.elasticache_parameter_group.this_elasticache_parameter_group_id)}"
  enable_create_elasticache_parameter_group = "${var.parameter_group_name == "" ? true : false}"
}

module "pagerduty_extension" {
  source                                    = "./modules/pagerduty_extension"

  create                                    = "${local.enable_create_elasticache_subnet_group}"

  name                    = "${var.name}"
  endpoint_url            = "${var.endpoint_url}"
  extension_schema        = "${var.extension_schema}" 
  extension_objects       = ["${var.extension_objects}"]
  config                  = "${var.config}"
}

module "pagerduty_service_integration" {
  source                                    = "./modules/pagerduty_service_integration"

  service                 = "${var.service}"
  name		          = "${var.name}"
  type                    = "${var.type}" 
  vendor                  = "${var.vendor}" 
  integration_key         = "${var.integration_key}"
  integration_email       = "${var.integration_email}"
}

module "pagerduty_service" {
  source                                    = "./modules/pagerduty_service"

  create                                    = "${var.create_db_instance}"

  name                    = "${var.name}"
  description             = "${var.description}"
  auto_resolve_timeout    = "${var.auto_resolve_timeout}" 
  acknowledgement_timeout = "${var.acknowledgement_timeout}" 
  escalation_policy       = "${var.escalation_policy}"
  alert_creation          = "${var.alert_creation}"
}
