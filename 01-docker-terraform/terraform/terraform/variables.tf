variable "project" {
  description = "Project"
  default     = "terraform-proj1-485508"
}


variable "location" {
  description = "Project Location"
  default     = "AUSTRALIA-SOUTHEAST1"
}


variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}


variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default     = "terraform-proj1-485508"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default     = "demo_dataset"
}