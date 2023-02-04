provider "aws" {
  region  = "eu-west-2"
}
terraform {
   backend "s3" {
    bucket = "WDC_S3_Standard_12"
    key    = "state/terraform.tfstate"
    region = "eu-west-2"
    encrypt        = true
    dynamodb_table = "my-lock-table"
  }
}


module "kubernetes" {
  source = "./kubernetes_root"
  ami = "${var.ami}"
  cluster_name = "WDC-K8s_Cluster"
  master_instance_type = "t3.medium"
  nodes_max_size = 4
  nodes_min_size = 1
  private_subnet01_netnum = "1"
  public_subnet01_netnum = "2"
  region = "eu-west-2"
  vpc_cidr_block = "${var.vpc_cidr}"
  worker_instance_type = "t3.medium"
  vpc_name = "kubernetes"
}


