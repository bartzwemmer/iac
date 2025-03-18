terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
    }    
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.36.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"  # Path to your Kubernetes config file
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "docker-desktop"
}
