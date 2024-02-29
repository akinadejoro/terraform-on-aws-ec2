# DNS Registration 
## Default DNS
resource "aws_route53_record" "apps_dns" {
  zone_id = data.aws_route53_zone.mydomain.zone_id 
  name    = "myapps.akinadejoro.com"
  type    = "A"
  alias {
    name                   = module.alb.dns_name
    zone_id                = module.alb.zone_id
    evaluate_target_health = true
  }  
}

## App1 DNS
resource "aws_route53_record" "app1_dns" {
  zone_id = data.aws_route53_zone.mydomain.zone_id 
  name    = "azure-aks.akinadejoro.com"
  type    = "A"
  alias {
    name                   = module.alb.dns_name
    zone_id                = module.alb.zone_id
    evaluate_target_health = true
  }  
}
