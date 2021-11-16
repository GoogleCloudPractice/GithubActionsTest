
variable "project_id" {
  type        = string
  description = "The Google Cloud Project Id"
  default = "flash-surge-331812"
}

variable "region" {
  type    = string
  default = "europe-west2"
}

variable "zone" {
  type    = string
  default = "europe-west2-a"
}

variable "google_credentials" {
  type    = string
  default = "europe-west2-a"
}
variable "bucket_name" {
  type    = string
}


