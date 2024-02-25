terraform {
  backend "gcs" {
    bucket = "golang-logging-demo-tf-state"
    prefix = "terraform/state"
    credentials = "/Users/Disha/Downloads/golang-logging-demo-e72d86139256.json"
  }
}
