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

resource "github_repository" "example" {
  name        = "Terraform-test"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner                = "github"
    repository           = "terraform-module-template"
    include_all_branches = true
  }
}