
/*
Lista_vm_uso = [] 

#Aqui define a VM que vai ser rodada 
resource "google_compute_instance" "airbyte_vm" {
  name         = "airbyte-vm"
  machine_type = "e2-standard-2"
  zone         = "${var.region}-a"

  #tamanho do disco da vm, e a imagem 
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 50
    }
  }

  #tipo de conectar
  network_interface {
    network = "default"
    access_config {0.0.0.0/0} 
  }

#“ensina” a VM a instalar e rodar o Airbyte automaticamente assim que subir.
  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update -y
    apt-get install -y docker.io docker-compose git
    git clone https://github.com/airbytehq/airbyte.git /opt/airbyte #mudar para a versão não bugada
    cd /opt/airbyte
    ./run-ab-platform.sh
  EOT
}

output "airbyte_ip" {
  value = google_compute_instance.airbyte_vm.network_interface[0].access_config[0].nat_ip
}
*/