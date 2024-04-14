provider "mongodbatlas" {
  public_key  = var.public_key
  private_key = var.private_key
  project_id  = var.project_id
}


resource "mongodbatlas_database_user" "example_user" {
  project_id = var.project_id
  username   = "kevonmitchell2000"
  password   = var.db_password
  database_name = "sample_analytics"
  auth_database_name = "admin"  # specify the authentication database name here
}

resource "mongodbatlas_cluster" "Storage1" {
  project_id    = var.project_id
  name          = "Storage1"
  provider_name = "AWS"
  region_name   = "us-east-1"
  tier          = "M0"
  provider_instance_size_name = "M0"  # specify the instance size here
}


resource "mongodbatlas_database" "sample" {
  project_id    = var.project_id
  cluster_name  = mongodbatlas_cluster.Storage1.name
  name          = "sample_analytics"
}
