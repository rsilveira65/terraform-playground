variable "cluster_name" {
  default = "hearst"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  default = "10.101.88.0/21"
}

variable "private_subnets_cidr_blocks" {
  default = {
    private_subnet_1a = "10.101.88.0/23"
    private_subnet_1c = "10.101.90.0/23"
  }
}

variable "public_subnets_cidr_blocks" {
  default = {
    public_subnet_1a = "10.101.92.0/23"
    public_subnet_1c = "10.101.94.0/23"
  }
}

variable "k8s_version" {
  default = "1.19"
}

variable "nodes_instances_sizes" {
  default = [
    "t3.large"
  ]
}
variable "auto_scale_options" {
  default = {
    min     = 2
    max     = 10
    desired = 2
  }
}

variable "auto_scale_cpu" {
  default = {
    scale_up_threshold  = 80
    scale_up_period     = 60
    scale_up_evaluation = 2
    scale_up_cooldown   = 300
    scale_up_add        = 2

    scale_down_threshold  = 40
    scale_down_period     = 120
    scale_down_evaluation = 2
    scale_down_cooldown   = 300
    scale_down_remove     = -1
  }
}