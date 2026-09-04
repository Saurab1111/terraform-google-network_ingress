output "load_balancer_ip" {
  description = "Global IP address of the HTTPS load balancer."
  value       = google_compute_global_address.this.address
}

output "https_forwarding_rule" {
  description = "HTTPS forwarding rule self link."
  value       = google_compute_global_forwarding_rule.https.self_link
}

output "url_map" {
  description = "URL map self link."
  value       = google_compute_url_map.https.self_link
}
