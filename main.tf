resource "helm_release" "aws_efs_csi_driver" {
  name       = "secrets-store-csi-driver"
  repository = "https://kubernetes-sigs.github.io/secrets-store-csi-driver/charts"
  chart      = "secrets-store-csi-driver"
  namespace  = "kube-system"

  version = "1.2.2"

  cleanup_on_fail = true

  values = [
    jsonencode({
      linux = {
        tolerations = var.tolerations
      }
    })
  ]
}
