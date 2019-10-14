variable "ssh_key_name" {
  description = "The aws ssh key name used to connect to any ec2 instances"
}

variable "profile" {
  description = "aws local profile to use"
}

variable "environment" {
  description = "type of environment you are deploying (eg: dev, prod, staging)"
}

variable "cluster_name" {
  description = "Name of your deployment (eg: CitizenPlane)"
}

variable "desired_capacity" {
  description = "Default size of your manager swarm (1, 3, 5)"
}

variable "autoscaling_min_size" {
  description = "defined the minimum amount of the nodes you want in your autoscaling group"
}

variable "autoscaling_max_size" {
  description = "defined the maximum amount of the nodes you want in your autoscaling group"
}

variable "do_autoscaling_lifecycle_hook" {
  type        = bool
  description = "defined if or not the lifecycle hook wil be created"
  default     = false
}

variable "root_volume_size" {
  description = "Size of the filesystem mounted on `/`"
}

variable "rabbit_volume_size" {
  description = "Size of the docker filesystem mount point"
}

variable "rabbitmq_version" {
  description = "The version of the rabbitmq that you want install. To see all versions click this link: https://dl.bintray.com/rabbitmq/debian/dists/"
  default     = "main" # rabbitmq-server-v3.6.x, rabbitmq-server-v3.7.x, rabbitmq-server-v3.8.x/
}

variable "erlang_version" {
  description = "The version of the rabbitmq that you want install. To see all versions click this link: https://dl.bintray.com/rabbitmq-erlang/debian/dists/"
  default     = "erlang" # erlang-16.x, erlang-19.x, erlang-20.x, erlang-21.x, erlang-22.x
}

variable "rabbitmq_admin_user" {
  description = "The admin username to connect at rabbitmq by manager panel and amqp"
  default     = "admin"
}

variable "rabbitmq_admin_password" {
  description = "The admin password to connect at rabbitmq by manager panel and amqp"
  default     = "admin"
}

variable "rabbitmq_remove_guest_user" {
  type        = bool
  description = "remove default guest user from rabbitmq"
  default     = false
}

variable "image_id" {
  description = "Aws ami to be used by ec2 instances"
}

variable "instance_ebs_optimized" {
  description = "Enable instance with optimized hard drive"
}

variable "associate_public_ip_address" {
  description = "Enable public ip on manager"
}

variable "az_count" {
  default     = 3
  description = "availability zone number"
}

variable "instance_type" {}

variable "erl_secret_cookie" {
  description = "Used by rabbitmq to join a cluster"
}

variable "aws_access_key" {
  description = "Used by rabbitmq to describe autoscaling group"
}

variable "aws_secret_key" {
  description = "Used by rabbitmq to describe autoscaling group"
}

variable "cluster_fqdn" {
  description = "a subdomain for your route53 dns"
}

variable "ingress_private_cidr_blocks" {
  type = "list"
}

variable "ingress_public_cidr_blocks" {
  type = "list"
}

variable "internet_public_cidr_blocks" {
  type = "list"
}

variable "external_subnets" {
  description = "A list of one or more availability zones for the ASG"
  type        = "list"
}

variable "vpc_id" {}
variable "region" {}

variable "certificate_arn" {}

variable "subnet_ids" {
  type = "list"
}

variable "domain_name" {}
