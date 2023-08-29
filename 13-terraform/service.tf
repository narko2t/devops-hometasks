resource "kubernetes_service" "svc-wcg" {
  metadata {
    name = "wcg-service"
  }
  spec {
    selector = {
      app = "word-cloud-generator"
    }
    port {
      port        = var.port
      target_port = var.target_port
    }

    type = "ClusterIP"
  }
}