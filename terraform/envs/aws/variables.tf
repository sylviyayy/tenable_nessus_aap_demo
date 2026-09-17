variable "aws_region" {
  type        = string
  description = "AWS region for demo lab"
  default     = "ap-southeast-1"
}

variable "demo_name" {
  type        = string
  description = "Prefix for demo resource names"
  default     = "tenable_nessus_aap_demo"
}
