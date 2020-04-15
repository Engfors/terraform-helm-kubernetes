module "network" {
  source  = "terraform-google-modules/network/google"
  version = "2.2.0"

  # The name of the network being created
  network_name = var.network_name

  # The ID of the project where this VPC will be created
  project_id = var.google_project

  # The list of subnets being created
  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = var.location.gcp
    },
  ]
}
