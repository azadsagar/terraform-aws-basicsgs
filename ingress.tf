

resource "aws_security_group_rule" "db_ing1" {

  from_port         = var.default_db_port
  protocol          = "tcp"
  security_group_id = aws_security_group.db.id
  to_port           = var.default_db_port
  type              = "ingress"

  source_security_group_id = aws_security_group.app.id
}

resource "aws_security_group_rule" "db_ing2" {

  count = length(var.additional_sg_ids_to_whitelist_for_db)

  from_port         = var.default_db_port
  protocol          = "tcp"
  security_group_id = aws_security_group.db.id
  to_port           = var.default_db_port
  type              = "ingress"

  source_security_group_id = var.additional_sg_ids_to_whitelist_for_db[count.index]
}

resource "aws_security_group_rule" "db_ing3" {

  from_port         = var.default_db_port
  protocol          = "tcp"
  security_group_id = aws_security_group.db.id
  to_port           = var.default_db_port
  type              = "ingress"

  cidr_blocks = var.additional_ipv4_cidr_for_db_sg
}

#-----------

resource "aws_security_group_rule" "app_ing1" {

  from_port         = 0
  protocol          = "tcp"
  security_group_id = aws_security_group.app.id
  to_port           = 65535
  type              = "ingress"

  source_security_group_id = aws_security_group.web.id
}

resource "aws_security_group_rule" "app_ing2" {

  count = length(var.additional_sg_ids_to_whitelist_for_app)

  from_port         = 0
  protocol          = "tcp"
  security_group_id = aws_security_group.app.id
  to_port           = 65535
  type              = "ingress"

  source_security_group_id = var.additional_sg_ids_to_whitelist_for_app[count.index]
}

resource "aws_security_group_rule" "app_ing3" {

  from_port         = 0
  protocol          = "tcp"
  security_group_id = aws_security_group.app.id
  to_port           = 65535
  type              = "ingress"

  cidr_blocks = var.additional_ipv4_cidr_for_app_sg
}


#-------

resource "aws_security_group_rule" "web_ing1" {

  count = length(local.web_ports)

  from_port         = local.web_ports[count.index]
  protocol          = "tcp"
  security_group_id = aws_security_group.web.id
  to_port           = local.web_ports[count.index]
  type              = "ingress"

  cidr_blocks = ["0.0.0.0/0"]
}


resource "aws_security_group_rule" "web_ing2" {

  count = length(local.web_ports)

  from_port         = local.web_ports[count.index]
  protocol          = "tcp"
  security_group_id = aws_security_group.web.id
  to_port           = local.web_ports[count.index]
  type              = "ingress"

  cidr_blocks = var.additional_ipv4_cidr_for_web_sg
}