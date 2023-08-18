## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.db](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.web](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.app_egress1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.app_ing1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.app_ing2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.app_ing3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.db_egress1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.db_ing1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.db_ing2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.db_ing3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.web_egress1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.web_ing1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.web_ing2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_ipv4_cidr_for_app_sg"></a> [additional\_ipv4\_cidr\_for\_app\_sg](#input\_additional\_ipv4\_cidr\_for\_app\_sg) | Additional IPv4 CIDR block to whitelist for App Security Group | `list(string)` | `[]` | no |
| <a name="input_additional_ipv4_cidr_for_db_sg"></a> [additional\_ipv4\_cidr\_for\_db\_sg](#input\_additional\_ipv4\_cidr\_for\_db\_sg) | Additional IPv4 CIDR block to whitelist for DB Security Group | `list(string)` | `[]` | no |
| <a name="input_additional_ipv4_cidr_for_web_sg"></a> [additional\_ipv4\_cidr\_for\_web\_sg](#input\_additional\_ipv4\_cidr\_for\_web\_sg) | Additional IPv4 CIDR block to whitelist for Web Security Group | `list(string)` | `[]` | no |
| <a name="input_additional_sg_ids_to_whitelist_for_app"></a> [additional\_sg\_ids\_to\_whitelist\_for\_app](#input\_additional\_sg\_ids\_to\_whitelist\_for\_app) | Additional list of Security Groups to whitelist for App Security Group | `list(string)` | `[]` | no |
| <a name="input_additional_sg_ids_to_whitelist_for_db"></a> [additional\_sg\_ids\_to\_whitelist\_for\_db](#input\_additional\_sg\_ids\_to\_whitelist\_for\_db) | Additional list of Security Groups to whitelist for DB Security Group | `list(string)` | `[]` | no |
| <a name="input_additional_tags"></a> [additional\_tags](#input\_additional\_tags) | Tags as Key/Value pair map. These tags are attached all the resources created by module | `map(string)` | `{}` | no |
| <a name="input_default_db_port"></a> [default\_db\_port](#input\_default\_db\_port) | Default Port to be used by ingress rule for DB Subnet | `number` | `5432` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace used as one of the combination for tags prefix. Usually goes to Name tag | `string` | `"example"` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage used as one of the combination for tags prefix. Usually goes to Name tag and helps identify environment. Default is set to `dev` | `string` | `"dev"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_security_group_id"></a> [app\_security\_group\_id](#output\_app\_security\_group\_id) | default application security group id |
| <a name="output_db_security_group_id"></a> [db\_security\_group\_id](#output\_db\_security\_group\_id) | default db security group id |
| <a name="output_web_security_group_id"></a> [web\_security\_group\_id](#output\_web\_security\_group\_id) | default web security group id |
