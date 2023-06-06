module "eks_gc0_eu-central-1_service_nginx" {
  providers = {
    kustomization = kustomization.eks_gc0_eu-central-1
  }

  source  = "kbst.xyz/catalog/nginx/kustomization"
  version = "1.7.0-kbst.0"

  configuration = {
    apps = {}
    ops  = {
      replicas = [{
        # refers to the 'metadata.name' of the resource to scale
        name = "nginx"

        # sets the desired number of replicas
        count = 1
     }]
    }
  }
}
