resource "aws_ecs_task_definition" "this" {
  family                = "my-app-task"
  network_mode          = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                   = "256"
  memory                = "512"
  execution_role_arn    = var.execution_role_arn
  task_role_arn         = var.task_role_arn  # Pass the task role ARN here

  container_definitions = jsonencode([{
    name      = "nginx-container"
    image     = var.container_image
    cpu       = 0
    memory    = 512
    essential = true
    portMappings = [
      {
        containerPort = var.container_port
        hostPort      = var.container_port
        protocol      = "tcp"
      }
    ]
  }])
}
