/*
resource "digitalocean_firewall" "test_firewall" {
  name = "sp-dev-fw-new"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "all"
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4 for HTTP
      "::/0"         # Allow all IPv6 for HTTP
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4 for HTTPS
      "::/0"         # Allow all IPv6 for HTTPS
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4 for custom port
      "::/0"         # Allow all IPv6 for custom port
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "all"
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from specific IPv4 range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol   = "icmp"
    port_range = "all"
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4 for ICMP
      "::/0"         # Allow all IPv6 for ICMP
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "all"
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4 for TCP outbound traffic
      "::/0"         # Allow all IPv6 for TCP outbound traffic
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "all"
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4 for UDP outbound traffic
      "::/0"         # Allow all IPv6 for UDP outbound traffic
    ]
  }
}


resource "digitalocean_firewall" "test_firewall" {
  name = "tsp-dev-fw-new"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows all TCP traffic from the given IPs
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"  # Allows HTTP traffic on port 80 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"  # Allows HTTPS traffic on port 443 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"  # Allows custom traffic on port 8080 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows all UDP traffic from the specified source IP
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from this IP range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol   = "icmp"
    port_range = "0-65535"  # Allows ICMP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows TCP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows UDP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }
}




resource "digitalocean_firewall" "test_firewall" {
  name = "test-firewall"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows all TCP traffic from the given IPs
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"  # Allows HTTP traffic on port 80 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"  # Allows HTTPS traffic on port 443 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"  # Allows custom traffic on port 8080 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows all UDP traffic from the specified source IP
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from this IP range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol   = "icmp"
    port_range = "all"  # ICMP doesn't require a port range, so use 'all'
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows TCP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows UDP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }
}


resource "digitalocean_firewall" "test_firewall" {
  name = "test-firewall"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows all TCP traffic from the given IPs
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"  # Allows HTTP traffic on port 80 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"  # Allows HTTPS traffic on port 443 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"  # Allows custom traffic on port 8080 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows all UDP traffic from the specified source IP
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from this IP range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol   = "icmp"
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows TCP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows UDP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }
}


resource "digitalocean_firewall" "test_firewall" {
  name = "test-firewall"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows all TCP traffic from the given IPs
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"  # Allows HTTP traffic on port 80 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"  # Allows HTTPS traffic on port 443 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"  # Allows custom traffic on port 8080 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows all UDP traffic from the specified source IP
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from this IP range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol   = "icmp"
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows TCP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows UDP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }
}




resource "digitalocean_firewall" "test_firewall" {
  name = "test-firewall"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows all TCP traffic from the given IPs
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"  # Allows HTTP traffic on port 80 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"  # Allows HTTPS traffic on port 443 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"  # Allows custom traffic on port 8080 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows all UDP traffic from the specified source IP
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from this IP range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol = "icmp"
    # No port_range needed for ICMP
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows TCP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows UDP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }
}



resource "digitalocean_firewall" "test_firewall" {
  name = "test-firewall"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows all TCP traffic from the given IPs
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"  # Allows HTTP traffic on port 80 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"  # Allows HTTPS traffic on port 443 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"  # Allows custom traffic on port 8080 from all sources
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows all UDP traffic from the specified source IP
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from this IP range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol = "icmp"
    # No port_range needed for ICMP
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allows TCP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allows UDP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }
}




resource "digitalocean_firewall" "test_firewall" {
  name = "test-firewall"

  # Inbound Rules
  inbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allow all TCP ports from specific sources
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "80"  # HTTP traffic on port 80 from all IPv4 and IPv6
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "443"  # HTTPS traffic on port 443 from all IPv4 and IPv6
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "tcp"
    port_range = "8080"  # Custom traffic on port 8080 from all IPv4 and IPv6
    source_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  inbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allow all UDP traffic from the specific source IP
    source_addresses = [
      "10.139.0.0/16"  # Allow UDP traffic from this IP range
    ]
  }

  # Outbound Rules
  outbound_rule {
    protocol = "icmp"
    # No port_range needed for ICMP
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "tcp"
    port_range = "0-65535"  # Allow all TCP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }

  outbound_rule {
    protocol   = "udp"
    port_range = "0-65535"  # Allow all UDP traffic to all destinations
    destination_addresses = [
      "0.0.0.0/0",  # Allow all IPv4
      "::/0"         # Allow all IPv6
    ]
  }
}


resource "digitalocean_firewall" "test_firewall" {
  name        = "test-firewall"
  droplet_ids = digitalocean_droplet.cluster_nodes[*].id  # Update this according to your actual droplet IDs

  # All TCP ports from specified IP ranges
  inbound_rule {
    protocol         = "tcp"
    port_range       = "0-65535"
    source_addresses = [
      "10.139.0.0/16", 
      "14.195.41.246", 
      "159.223.76.35", 
      "203.122.50.50", 
      "3.109.191.183", 
      "64.226.109.192"
    ]
  }

  # HTTP on port 80 from all IPv4 and IPv6
  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # HTTPS on port 443 from all IPv4 and IPv6
  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # Custom port 8080 from all IPv4 and IPv6
  inbound_rule {
    protocol         = "tcp"
    port_range       = "8080"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # All UDP ports from 10.139.0.0/16
  inbound_rule {
    protocol         = "udp"
    port_range       = "0-65535"
    source_addresses = ["10.139.0.0/16"]
  }

  # ICMP outbound to all destinations
  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  # All TCP outbound to all destinations
  outbound_rule {
    protocol              = "tcp"
    port_range            = "0-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  # All UDP outbound to all destinations
  outbound_rule {
    protocol              = "udp"
    port_range            = "0-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}


resource "digitalocean_firewall" "test_firewall" {
  name = "sp-dev-fw-new"

  droplet_ids = [for droplet in digitalocean_droplet.cluster_nodes : droplet.id]

  
  inbound_rule {
    protocol          = "tcp"
    port_range       = "1-65535"  
    source_addresses = [
      "10.139.0.0/16",
      "14.195.41.246",
      "159.223.76.35",
      "203.122.50.50",
      "3.109.191.183",
      "64.226.109.192"
    ]
  }

  inbound_rule {
    protocol          = "tcp"
    port_range       = "80"
    source_addresses = [
      "0.0.0.0/0",  
      "::/0"         
    ]
  }

  inbound_rule {
    protocol          = "tcp"
    port_range       = "443"
    source_addresses = [
      "0.0.0.0/0",  
      "::/0"         
    ]
  }

  inbound_rule {
    protocol          = "tcp"
    port_range       = "8080"
    source_addresses = [
      "0.0.0.0/0",  
      "::/0"         
    ]
  }

  inbound_rule {
    protocol          = "udp"
    port_range       = "1-65535"  
    source_addresses = [
      "10.139.0.0/16"  
    ]
  }


  
  outbound_rule {
    protocol          = "icmp"
    port_range       = "1-65535"  
    destination_addresses = [
      "0.0.0.0/0",  
      "::/0"         
    ]
  }

  outbound_rule {
    protocol          = "tcp"
    port_range       = "1-65535"  
    destination_addresses = [
      "0.0.0.0/0",  
      "::/0"         
    ]
  }

  outbound_rule {
    protocol          = "udp"
    port_range       = "1-65535"  
    destination_addresses = [
      "0.0.0.0/0",  
      "::/0"         
    ]
  }
}
*/

resource "digitalocean_firewall" "test_firewall" {
  name = "sp-dev-fw-new"

  droplet_ids = [for droplet in digitalocean_droplet.cluster_nodes : droplet.id]

  # Allow HTTP from anywhere (port 80)
  inbound_rule {
    protocol          = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]  # Allow HTTP from any IP
  }

  # Allow HTTPS from anywhere (port 443)
  inbound_rule {
    protocol          = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]  # Allow HTTPS from any IP
  }

  # Allow Custom port (8080) from anywhere
  inbound_rule {
    protocol          = "tcp"
    port_range       = "8080"
    source_addresses = ["0.0.0.0/0", "::/0"]  # Allow custom port from any IP
  }
/*
  # Allow SSH (port 22) only from your public IPv4 address
  inbound_rule {
    protocol          = "tcp"
    port_range       = "22"
    source_addresses = ["106.219.152.219/32"]  # Your public IPv4 address
  }
*/
  # Allow internal network traffic for UDP (if required)
  inbound_rule {
    protocol          = "udp"
    port_range       = "1-65535"
    source_addresses = ["10.139.0.0/16"]  # Allow internal subnet traffic
  }

  # Outbound Rules (allow all traffic)
  outbound_rule {
    protocol          = "icmp"
    port_range       = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol          = "tcp"
    port_range       = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol          = "udp"
    port_range       = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}
