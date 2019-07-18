resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "${var.node_pool_name}"
  location   = "${var.gcp_region}"
  cluster    = "${google_container_cluster.primary.name}"
  node_count = "${var.node_pool_machine_count}"

  node_config {
    preemptible  = true
    machine_type = "${var.node_pool_machine_type}"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"

    ]
  }
}
