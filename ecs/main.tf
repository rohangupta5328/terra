provider "aws" {

    region = "${var.aws_region}"
  
}

resource "aws_cloudwatch_log_group" "hello-world" {
  name              = "blackbelt-ecs"
  retention_in_days = 1
}

resource "aws_ecs_task_definition" "blackbelt-ecs" {
  family = "blackbelt-ecs"

  container_definitions = <<EOF
[
  {
    "name": "harness_bb_ecs_demo",
    "image": "hello-world",
    "cpu": 0,
    "memory": 128,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "us-east-1",
        "awslogs-group": "harness_bb_ecs_demo",
        "awslogs-stream-prefix": "complete-ecs"
      }
    }
  }
]
EOF
}

resource "aws_ecs_service" "hello-world" {
  name = "hello-world"
  cluster = "${var.cluster_id}"
  task_definition = "$aws_ecs_task_definition.hello_world.arn"

  desired_count = 1

  deployment_maximum_percent = 100
  deployment_minimum_healthy_percent = 0
}
