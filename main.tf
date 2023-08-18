
resource "aws_security_group" "db" {

  name        = "${local.tag_prefix}-db-sg"
  description = "Security Group for DB Subnet ${local.tag_prefix}"

  tags = merge({
    Name = "${local.tag_prefix}-db-sg"
  }, var.additional_tags)
}

resource "aws_security_group" "app" {

  name        = "${local.tag_prefix}-app-sg"
  description = "Security Group for App Subnet ${local.tag_prefix}"

  tags = merge({
    Name = "${local.tag_prefix}-db-sg"
  }, var.additional_tags)
}

resource "aws_security_group" "web" {

  name        = "${local.tag_prefix}-web-sg"
  description = "Security Group for Web Subnet ${local.tag_prefix}"

  tags = merge({
    Name = "${local.tag_prefix}-db-sg"
  }, var.additional_tags)
}