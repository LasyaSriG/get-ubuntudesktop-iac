provider "google" {
  project     = "lasya-ganta-14"
}

terraform {
  backend "gcs" {
    bucket  = "lasyas-bucket"
    prefix  = "terraform-desktop/state"
  }
}

module "desktop-server" {
source = "/var/lib/jenkins/workspace/desktop/terraform-desktop/modules/desktop-server"
}
