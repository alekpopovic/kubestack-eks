module "eks_gc0_eu-central-1_service_nginx" {
  providers = {
    kustomization = kustomization.eks_gc0_eu-central-1
  }

  source  = "kbst.xyz/catalog/nginx/kustomization"
  version = "1.7.0-kbst.0"

  configuration = {
    apps = {}
    ops  = {}
  }
}
