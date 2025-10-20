resource "helm_release" "dremio" {
    repository = "oci://registry-1.docker.io/bitnamicharts"
    name = "dremio"
    chart = "dremio"
    namespace  = "dremio"
    create_namespace = true
}

