output "droplet_info" {
  value = [
    for droplet in digitalocean_droplet.cluster_nodes : {
      id = droplet.id
      ip = droplet.ipv4_address
    }
  ]
}

output "firewall_info" {
  value = {
    firewall_id = digitalocean_firewall.test_firewall.id
    #firewall_ip = digitalocean_firewall.test_firewall.ipv4_address
  }
}