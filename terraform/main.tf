provider "mongodbatlas" {
  public_key  = var.public_key
  private_key = var.private_key
  project_id = var.project_id
}
output "connection_strings" {
  value = {
    standard = "mongodb+srv://kevonmitchell2000:n4wvd9sA7Y0mYCLo@storage1.as6p3uo.mongodb.net/?retryWrites=true&w=majority&appName=Storage1"
  }
}



