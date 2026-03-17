output "ssh_private_key_base64" {
  value       = base64encode(resource.tls_private_key.this.private_key_openssh)
  description = "Private key in OpenSSH key form, Base64 encoded to preserve linebreaks"
  sensitive   = true
}

output "ssh_public_key" {
  value       = trimspace(resource.tls_private_key.this.public_key_openssh)
  description = "Public key in OpenSSH key form"
}
