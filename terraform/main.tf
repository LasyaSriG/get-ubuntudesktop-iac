provider "google" {
  project     = "lasya-ganta-14"
}

terraform {
  backend "gcs" {
    bucket  = "lasyas-bucket"
    prefix  = "terraform-infra/state"
  }
}

module "jenkins-server" {
source = "/root/get-ubuntudesktop-iac/terraform/modules/jenkins-server"
}
