variable "app_name" {
  default = "my-app"
}

variable "image_tag" {
  description = "Docker image tag"
  default     = "latest"
}

variable "vpc_id" {
  description = "VPC where ECS runs"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnets for ECS tasks"
  type        = list(string)
}

