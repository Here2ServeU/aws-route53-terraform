output "zone_id" {
  description = "The ID of the created Route 53 hosted zone."
  value       = aws_route53_zone.t2s_academy_tech.zone_id
}

output "name_servers" {
  description = "The name servers of the created Route 53 hosted zone."
  value       = aws_route53_zone.t2s_academy_tech.name_servers
}
