terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }

  backend "kubernetes" {
    secret_suffix    = "-wcg-state"
    config_path      = "~/.kube/config"
  }

  required_providers {
    github = {
      source = "integrations/github"
      version = "5.34.0"
    }
  }
}

provider "github" {
  token = var.token
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}