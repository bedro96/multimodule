output "public_ip_address" {
  value = module.ubuntu-machine.public_ip_address
}

output "tls_private_key" {
  value     = module.ubuntu-machine.tls_private_key
  sensitive = true
}