terraform {
  required_version = ">= 1.5.0"
  
  required_providers { 
    google = { 
      source  = "hashicorp/google" 
      version = "~> 6.0"      
    }
  }
  #backend "local" {}

}

resource "google_storage_bucket" "Teste_bucker" {
  name     = "teste_de_bucker"
  location = "US"
  uniform_bucket_level_access = true
}

provider "google" {
  project = "projetoteste-469520" 
  region  = "us-central1"       
  credentials = file("Key.json")
}
