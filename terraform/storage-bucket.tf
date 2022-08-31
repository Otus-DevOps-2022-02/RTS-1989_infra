provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_storage_bucket" "state-storage" {
  bucket        = var.bucket_name // Имя, которое вы выберете для вашего бакета
  access_key    = var.access_key  // access_id, который вы скопировали
  secret_key    = var.secret_key  // secret_key, который вы скопировали
  force_destroy = true
}
