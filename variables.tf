
variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
}

variable "ssh_key_ids" {
  description = "List of SSH key IDs to use for the Droplets"
  type        = list(string)
}


variable "region" {
  description = "Region to create Droplets in"
  type        = string

}


variable "droplet_size" {
  description = "Size of the Droplets."
  type        = string

}


variable "node_count" {
  description = "Number of Droplets to create for the cluster."
  type        = number

}


variable "vpc_uuid" {
  description = "The UUID of the existing VPC to use for the Droplets."
  type        = string
}

variable "project_id" {
  description = "The ID of the DigitalOcean project to associate resources with"
  type        = string
}
