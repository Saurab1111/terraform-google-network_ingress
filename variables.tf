variable "project_id" {
  type        = string
  description = "GCP project ID where resources will be created."
}

variable "name" {
  type        = string
  description = "Name prefix for ingress resources."
  default     = "network-ingress"
}

variable "domain_name" {
  type        = string
  description = "Primary domain name fronted by Cloudflare DNS and WAF."
  default     = "app.example.com"
}

variable "backend_service" {
  type        = string
  description = "Self link of an existing backend service."
}

variable "ssl_certificate_domains" {
  type        = list(string)
  description = "Domains to include in the Google-managed SSL certificate."
  default     = ["app.example.com"]
}

variable "enable_http_redirect" {
  type        = bool
  description = "Enable HTTP to HTTPS redirection."
  default     = true
}

variable "labels" {
  type        = map(string)
  description = "Labels for supported resources."
  default     = {}
}
