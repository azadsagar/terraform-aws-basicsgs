variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "additional_tags" {
  type        = map(string)
  default     = {}
  description = "Tags as Key/Value pair map. These tags are attached all the resources created by module"
}

variable "namespace" {
  type        = string
  default     = "example"
  description = "Namespace used as one of the combination for tags prefix. Usually goes to Name tag"
}

variable "stage" {
  type        = string
  default     = "dev"
  description = "Stage used as one of the combination for tags prefix. Usually goes to Name tag and helps identify environment. Default is set to `dev`"
}

variable "default_db_port" {
  type        = number
  default     = 5432
  description = "Default Port to be used by ingress rule for DB Subnet"
}

variable "additional_ipv4_cidr_for_db_sg" {
  description = "Additional IPv4 CIDR block to whitelist for DB Security Group"
  type        = list(string)
  default     = []
}

variable "additional_ipv4_cidr_for_app_sg" {
  description = "Additional IPv4 CIDR block to whitelist for App Security Group"
  type        = list(string)
  default     = []
}

variable "additional_ipv4_cidr_for_web_sg" {
  description = "Additional IPv4 CIDR block to whitelist for Web Security Group"
  type        = list(string)
  default     = []
}

variable "additional_sg_ids_to_whitelist_for_db" {
  description = "Additional list of Security Groups to whitelist for DB Security Group"
  type        = list(string)
  default     = []
}

variable "additional_sg_ids_to_whitelist_for_app" {
  description = "Additional list of Security Groups to whitelist for App Security Group"
  type        = list(string)
  default     = []
}