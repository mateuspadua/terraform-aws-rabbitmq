# ------------------------------------------------------
# General Settings
# ------------------------------------------------------
variable "environment" {
  description = "Desired environment to use in custom ids and names EG: \"staging\""
}

variable "name" {
  description = "The cluster name, e.g cdn"
}

variable "ssh_key_name" {
  description = "The aws ssh key name."
}

variable "region" {
  description = "The AWS region to create resources in."
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
}

variable "erl_secret_cookie" {
  description = "Used by rabbitmq to join a cluster"
}

variable "aws_access_key" {
  description = "Used by rabbitmq to describe autoscaling group"
}

variable "aws_secret_key" {
  description = "Used by rabbitmq to describe autoscaling group"
}

variable "cluster_fqdn" {}

# ------------------------------------------------------
#  EC2 parameters
# ------------------------------------------------------

variable "image_id" {
  description = "Ubuntu or Debian based image compatible with the start script (Use aws optimized ubuntu)"
}

variable "instance_type" {
  description = "Rabbit node type instance"
}

variable "instance_ebs_optimized" {
  description = "When set to true the instance will be launched with EBS optimized turned on"
}

variable "root_volume_size" {
  description = "Root volume size in GB"
}

variable "rabbit_volume_size" {
  description = "Attached EBS volume size in GB - this is where docker data will be stored"
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

# ------------------------------------------------------
#  Network - VPC  parameters
# ------------------------------------------------------

variable "vpc_id" {
  description = "ID of the VPC to use"
}

variable "external_subnets" {
  description = "External subnets of the VPC"
  type        = "list"
}

variable "associate_public_ip_address" {
  description = "Should created instances be publicly accessible (if the SG allows)"
}

# ------------------------------------------------------
#  Frontend Http
# ------------------------------------------------------
# variable "elb_id" {
#   description = "External ELB to use to balance the cluster"
# }

# Network Security
variable "ingress_public_cidr_blocks" {
  description = "A list of default CIDR blocks to allow traffic from (public usage)"
  type        = "list"
}

variable "ingress_private_cidr_blocks" {
  description = "A list of CIDR block to allow traffic from (private usage)"
  type        = "list"
}

variable "internet_public_cidr_blocks" {
  description = "Public outbount to access internet"
  type        = "list"
}

# ------------------------------------------------------
#  Auto Scaling Group parameters
# ------------------------------------------------------

variable "cpu_high_limit" {
  description = "Value of CPU Usage triggering a scale up"
}

variable "cpu_low_limit" {
  description = "Value of CPU Usage triggering a scale down"
}

variable "memory_high_limit" {
  description = "Value of memory Usage triggering a scale up"
}

variable "memory_low_limit" {
  description = "Value of memory Usage triggering a scale down"
}

variable "desired_capacity" {
  description = "defined how many node you want in your autoscaling group"
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


