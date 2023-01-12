resource "google_container_cluster" "exam_cluster" {
  name     = "${var.environment}-cluster"
  location = var.region
  
  // Must be set as we're not using default node pool
  remove_default_node_pool = true
  initial_node_count       = 1 

}

resource "google_container_node_pool" "exam_cluster_nodes" {
  name       = "${var.environment}-cluster-nodes"
  location   = var.region
  cluster    = google_container_cluster.exam_cluster.name
  
  node_config {

    labels = {
      env = var.environment
      // TODO: Taint
    }

    preemptible  = true
    machine_type = "e2-medium"
  }

  autoscaling {
    total_min_node_count = 1
    total_max_node_count = 5
    location_policy = "ANY"
  }
}
