module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.0"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name = "my-vpc"
  }
}

ubuntu@ip-172-31-86-69:~/task2/terraform/modules/vpc$ cd ..
ubuntu@ip-172-31-86-69:~/task2/terraform/modules$ cd ecs-cluster/
ubuntu@ip-172-31-86-69:~/task2/terraform/modules/ecs-cluster$ ls
main.tf
ubuntu@ip-172-31-86-69:~/task2/terraform/modules/ecs-cluster$ vim main.tf
ubuntu@ip-172-31-86-69:~/task2/terraform/modules/ecs-cluster$ cat main.tf
resource "aws_ecs_cluster" "this" {
  name = var.cluster_name
}

output "cluster_id" {
  value = aws_ecs_cluster.this.id
}

