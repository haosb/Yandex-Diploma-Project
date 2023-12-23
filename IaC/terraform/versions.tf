terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.87.0"
    }
  }

  # Описание бэкенда хранения состояния
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket   = "usmanov-terraform"
    region   = "ru-central1"
    key      = "terraform.tfstate"
    # access_key = var.AWS_ACCESS_KEY
    # secret_key = var.AWS_SECRET_ACCESS_KEY

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}