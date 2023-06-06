terraform {
  backend "s3" {
    bucket = "terraform-state-kubestack-6323cd4"
    region = "eu-central-1"
    key    = "tfstate"
  }
}
