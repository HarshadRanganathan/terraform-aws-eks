region = "us-east-1"

availability_zones = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c"
]

namespace = "pes"

instance_type = "r5a.xlarge"

health_check_type = "EC2"

wait_for_capacity_timeout = "20m"

max_size = 10

min_size = 3

autoscaling_policies_enabled = true

cpu_utilization_high_threshold_percent = 80

cpu_utilization_low_threshold_percent = 20

associate_public_ip_address = false

oidc_provider_enabled = true

disable_imds_v1 = true

update_launch_template_default_version = true

add_asg_cluster_autoscaler_discovery_tags = true 

map_additional_iam_roles = []

cluster_endpoint_private_access = true

cluster_endpoint_public_access = true

public_access_cidrs = []

enabled_cluster_log_types = [
  "api",
  "audit",
  "authenticator",
  "controllerManager",
  "scheduler",
]
