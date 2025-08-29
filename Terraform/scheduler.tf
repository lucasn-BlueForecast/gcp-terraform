resource "google_cloud_scheduler_job" "stop_airbyte" {
  name        = "stop-airbyte-vm"
  description = "Desliga a VM do Airbyte às 20h todo dia"
  schedule    = "0 20 * * *" # horário em cron (20:00)
  time_zone   = "America/Sao_Paulo"

  http_target {
    uri        = "https://compute.googleapis.com/compute/v1/projects/${var.project_id}/zones/${var.region}-a/instances/airbyte-vm/stop"
    http_method = "POST"

    oauth_token {
      service_account_email = "var.lucasnunes.n@gmail.com"
    }
  }
}
