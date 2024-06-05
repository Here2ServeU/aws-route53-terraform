variable "aws_region" {
  description = "The AWS region to create resources in."
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "The domain name to create the hosted zone for."
  type        = string
  default     = "t2s-academy.tech"
}

variable "a_record_ip" {
  description = "The IP address for the A record."
  type        = string
  default     = "192.0.2.44"  # Replace with your IP address or use an appropriate AWS service
}

variable "cname_record_target" {
  description = "The CNAME record target."
  type        = string
  default     = "t2s-academy.tech"
}
