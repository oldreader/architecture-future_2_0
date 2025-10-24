resource "helm_release" "datahub_prerequisites" {
  name       = "prerequisites"
  repository = "https://helm.datahubproject.io/"
  chart      = "datahub-prerequisites"
  timeout = 5400
}
resource "helm_release" "datahub" {
  name       = "datahub"
  repository = "https://helm.datahubproject.io/"
  chart      = "datahub"
  timeout = 5400
  depends_on = [
    helm_release.datahub_prerequisites
  ]
}