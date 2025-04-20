variable "cluster_id" {
  description = "ECS Cluster ID"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "private_subnets" {
  description = "Private subnets for ECS tasks"
  type        = list(string)
}

variable "container_image" {
  description = "The Docker image to run in the container"
  type        = string
}

variable "container_port" {
  description = "Port that the container listens on"
  type        = number
}

variable "desired_count" {
  description = "Desired number of running tasks"
  type        = number
}

variable "execution_role_arn" {
  description = "The ARN of the execution role"
  type        = string
}
# Declare public subnets for ECS service
variable "public_subnets" {
  description = "The public subnets in which ECS tasks will run"
  type        = list(string)
}

# Declare task role ARN for ECS service
variable "task_role_arn" {
  description = "The IAM role ARN for the ECS task"
  type        = string
}
