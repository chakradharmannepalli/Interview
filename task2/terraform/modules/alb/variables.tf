resource "aws_lb" "this" {
  name               = "my-app-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups   = [var.security_group_id]
  subnets           = var.public_subnets

  enable_deletion_protection = false
}

resource "aws_lb_target_group" "this" {
  name        = "my-app-tg"
  port        = var.container_port
  protocol    = "HTTP"
  vpc_id      = var.vpc_id
  target_type = "ip"
}

resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = "80"
  default_action {
    type = "fixed-response"
    fixed_response {
      status_code = 200
      content_type = "text/plain"
      message_body = "OK"
    }
  }
}

output "alb_url" {
  value = aws_lb.this.dns_name
}

ubuntu@ip-172-31-86-69:~/task2/terraform/modules/alb$ cat variables.tf 
variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "public_subnets" {
  description = "The public subnet IDs for the ALB"
  type        = list(string)
}

variable "target_group_arn" {
  description = "The ARN of the ECS service's target group"
  type        = string
}

variable "security_group_id" {
  description = "The security group ID for the ALB"
  type        = string
}

