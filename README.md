# Projeto Terraform - GCP

Este projeto utiliza **Terraform** para provisionar recursos no **Google Cloud Platform (GCP)**.  
A automação de deploy é feita com **GitHub Actions**.

---

## 📂 Estrutura do Projeto

- `main.tf` → Configuração principal do Terraform (provider, backends, etc.)
- `variables.tf` → Definição das variáveis utilizadas no projeto
- `schedule.r.tf` → Configuração de agendamento (Cloud Scheduler)
- `cloudrun.tf` → Configuração do serviço no Cloud Run
- `airbyte.tf` → Configuração do Airbyte no GCP

---

## ⚙️ Pré-requisitos

- [Terraform](https://developer.hashicorp.com/terraform/downloads) instalado (>= 1.5)
- Conta no [Google Cloud](https://cloud.google.com/) com permissões adequadas
- Autenticação configurada no `gcloud`
- Repositório configurado com GitHub Actions

---
