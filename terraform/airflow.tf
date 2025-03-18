resource "kubernetes_manifest" "init-airflow-deployment" {
  manifest = yamldecode(file("../airflow-k8s/airflow-root-app.yaml"))
  depends_on = [ helm_release.argocd ]
}