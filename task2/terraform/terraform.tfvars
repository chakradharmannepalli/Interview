# terraform.tfvars

container_port = 80
container_image = "nginx:latest"
desired_count = 2

# Subnet IDs (you should use real subnet IDs from your VPC)
public_subnets = ["subnet-12345678", "subnet-23456789"]
private_subnets = ["subnet-98765432", "subnet-87654321"]

aws_region = "us-east-1"
task_role_arn = "arn:aws:iam::123456789012:role/ecs-task-role"
