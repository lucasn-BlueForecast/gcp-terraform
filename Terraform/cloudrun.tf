resource "google_cloud_run_v2_job" "etl_job" {
  name     = "etl-job"
  location = var.region

  template {
    template {
      containers {
        image = "gcr.io/${var.project_id}/etl-job:latest"
        resources {
          limits = {
            memory = "512Mi"
            cpu    = "1"
          }
        }
      }
    }
  }
}
