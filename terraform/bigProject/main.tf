module "jenkins" {
    source = "../module/jenkins"
}

module "s3" {
    source = "../module/s3"
}

module "route53" {
    source = "../module/route53"
}

module "rancher" {
    source = "../module/rancher"
}

module "rds" {
    source = "../module/rds"
}