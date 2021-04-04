resource "helm_release" "redis" {
  for_each   = toset(["ns1", "ns2", "ns3"]) #only for multi namespaces
  name       = "${each.key}-redis"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "redis"
  version    = "12.7.4"
  namespace  = each.key #only for multi namespace

  set {
    name  = "global.imageRegistry"
    value = var.registry
  }

  set {
    name  = "global.storageClass"
    value = var.storageclass
  }

  set {
    name  = "image.repository"
    value = var.repository
  }

  set {
    name  = "image.tag"
    value = var.tag
  }

  set {
    name  = "usePassword"
    value = var.usepass
  }
}
