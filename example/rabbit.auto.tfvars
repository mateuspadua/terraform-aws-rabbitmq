## ssh key registered on aws and used to connect to ec2 instances
ssh_key_name = "Insert your ssh key name here"

## Disk
root_volume_size       = 50 # /
rabbit_volume_size     = 50 # /var/lib/rabbitmq
instance_ebs_optimized = false
# rabbitmq_version           = "rabbitmq-server-v3.7.x"  # rabbitmq-server-v3.6.x, rabbitmq-server-v3.7.x, rabbitmq-server-v3.8.x/
# erlang_version             = "erlang-21.x"  # erlang-16.x, erlang-19.x, erlang-20.x, erlang-21.x, erlang-22.x
rabbitmq_admin_user        = "your_username"
rabbitmq_admin_password    = "your_password"
rabbitmq_remove_guest_user = true

## AMI
# Note : AMI are region-related make sure the AMI you choose is available in your region
# https://cloud-images.ubuntu.com/locator/ec2/
image_id = "insert ubuntu ami related to your region"

# Manager
# If you don't have a private VPN connection configured set this to true so you can access your cluster
associate_public_ip_address = false
instance_type               = "t3.medium"
desired_capacity            = 3

# To bind the manager together, Rabbitmq uses the Erlang cookie so it knows they can join the cluster
erl_secret_cookie = "a random secret key"

# As we use the rabbit_peer_discovery_aws, we need credentials that can inspect ec2 or asg groups
# https://www.rabbitmq.com/cluster-formation.html#peer-discovery-aw
aws_access_key = ""
