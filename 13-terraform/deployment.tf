resource "kubernetes_deployment" "dp" {
  metadata {
    name = "wcg-deployment"
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app: "word-cloud-generator"
      }
    }

    template {
      metadata {
        labels = {
          app: "word-cloud-generator"
        }
      }

      spec {
        container {
          image = var.image
          name  = "word-cloud-generator"


          #liveness_probe {
          #  http_get {
          #    path = "/"
          #    port = 8888
          #  }
          #}
        }
      }
    }
  }
}