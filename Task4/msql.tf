resource "helm_release" "mssql" {
    repository = "oci://registry.gitlab.com/xrow-public/helm-mssql/charts"
    name = "mssql"
    chart = "mssql"
    namespace  = "mssql"
    create_namespace = true
}

