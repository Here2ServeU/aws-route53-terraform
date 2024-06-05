provider "aws" {
  region = var.aws_region
}

resource "aws_route53_zone" "t2s_academy_tech" {
  name = var.domain_name
}

resource "aws_route53_record" "a_record" {
  zone_id = aws_route53_zone.t2s_academy_tech.zone_id
  name    = var.domain_name
  type    = "A"
  ttl     = "60"
  records = [var.a_record_ip]
}

resource "aws_route53_record" "cname_record" {
  zone_id = aws_route53_zone.t2s_academy_tech.zone_id
  name    = "www.${var.domain_name}"
  type    = "CNAME"
  ttl     = "60"
  records = [var.cname_record_target]
}
