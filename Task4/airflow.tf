resource "helm_release" "airflow" {
    repository = "oci://registry-1.docker.io/bitnamicharts"
    name = "airflow"
    chart = "airflow"
    namespace  = "datahub"
    create_namespace = true
}

