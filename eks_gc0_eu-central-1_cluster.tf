module "eks_gc0_eu-central-1" {
  providers = {
    aws        = aws.eks_gc0_eu-central-1
    kubernetes = kubernetes.eks_gc0_eu-central-1
  }

  source = "github.com/kbst/terraform-kubestack//aws/cluster?ref=v0.18.2-beta.0"

  configuration = {
    apps = {
      base_domain                = var.base_domain
      cluster_availability_zones = "eu-central-1a,eu-central-1b,eu-central-1c"
      cluster_desired_capacity   = 3
      cluster_instance_type      = "t3a.xlarge"
      cluster_max_size           = 9
      cluster_min_size           = 3
      name_prefix                = "gc0"
    }
    ops = {}
  }
}
