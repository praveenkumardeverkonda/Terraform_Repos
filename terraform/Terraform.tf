terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.12.0"
    }
  }
}

provider "github" {
  # Configuration options
}

resource "github_repository" "Myrepo" {
    name = "Terraform-test"
    

}
