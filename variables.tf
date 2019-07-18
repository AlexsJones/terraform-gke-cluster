variable "cluster_name" {
  description = "Cluster name"
  default     = "terraform"
}

variable "credentials_path" {
  description = "Path to service account credentials"
}

variable "gcp_region" {
  description = "GCP region, e.g. us-east1"
  default     = "us-east1"
}

variable "gcp_zone" {
  description = "GCP zone, e.g. us-east1-b (which must be in gcp_region)"
  default     = "us-east1-b"
}

variable "gcp_project" {
  description = "GCP project name"
}

variable "initial_node_count" {
  description = "Number of worker VMs to initially create"
  default     = 1
}

variable "master_username" {
  description = "Username for accessing the Kubernetes master endpoint"
  default     = "k8smaster"
}

variable "master_password" {
  description = "Password for accessing the Kubernetes master endpoint"
  default     = "k8smasterk8smaster"
}
variable "node_pool_name" {
  description = "GCE machine type"
  default     = "np1"
}
variable "node_pool_machine_type" {
  description = "GCE machine type"
  default     = "n1-standard-1"
}
variable "node_pool_machine_count" {
  description = "GCE machine type"
  default     = 3
}
