
data "digitalocean_vpc" "existing_vpc" {
  id = var.vpc_uuid 
}

resource "digitalocean_droplet" "cluster_nodes" {
  count  = var.node_count
  name   = "ailp-dev-${count.index + 4}" 
  region = var.region
  size   = var.droplet_size
  image  = "ubuntu-22-04-x64"


  vpc_uuid = data.digitalocean_vpc.existing_vpc.id
  ssh_keys = var.ssh_key_ids

  
  tags = ["ailp-dev-cluster"]

  lifecycle {
    ignore_changes = [
      tags 
    ]
  }
}


resource "null_resource" "assign_to_project" {
  count = var.node_count

  provisioner "local-exec" {
    command = "doctl projects resources assign ${var.project_id} --resource urn:droplet:${digitalocean_droplet.cluster_nodes[count.index].id}"
  }

  depends_on = [digitalocean_droplet.cluster_nodes]
}
/*
resource "null_resource" "assign_to_project" {
  count = var.node_count

  provisioner "local-exec" {
    command = "doctl projects resources assign ${var.project_id} --resource droplet ${digitalocean_droplet.cluster_nodes[count.index].id}"
  }

  depends_on = [digitalocean_droplet.cluster_nodes]
}


resource "null_resource" "assign_to_project" {
  count = var.node_count

  provisioner "local-exec" {
    command = "doctl projects resources assign ${var.project_id} --resource-type droplet --resource-id ${digitalocean_droplet.cluster_nodes[count.index].id}"
  }

  depends_on = [digitalocean_droplet.cluster_nodes]
}
*/

