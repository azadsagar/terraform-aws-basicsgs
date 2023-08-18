
locals {
  tag_prefix = "${var.namespace}-${var.stage}"
  web_ports  = [80, 443]
}