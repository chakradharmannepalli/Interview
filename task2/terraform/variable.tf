# Declare the container port variable
variable "container_port" {
  description = "The port on which the container will listen"
  type        = number
}

# Declare the desired count of ECS tasks
variable "desired_count" {
  description = "The desired number of ECS tasks to run"
  type        = number
}

# Declare the container image variable
variable "container_image" {
  description = "The Docker image for the container"
  type        = string
}

# Declare the AWS region
variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
}

# Declare the task role ARN variable (for ECS tasks)
variable "task_role_arn" {
  description = "The IAM role ARN for the ECS task"
  type        = string
}

# Declare public and private subnets for ECS
variable "public_subnets" {
  description = "The public subnets in which ECS tasks will run"
  type        = list(string)
}

variable "private_subnets" {
  description = "The private subnets in which ECS tasks will run"
  type        = list(string)
}

