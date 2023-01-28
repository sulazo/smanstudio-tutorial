terraform {
  backend "s3" {
    bucket  = "smanbucket4aosnotes"
    key     = "terraform-state"
    region  = "us-east-1"
    profile = "terraform-user"
  }
}