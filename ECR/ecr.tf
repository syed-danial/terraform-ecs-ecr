provider "aws" {
  region = var.aws_region
}

resource "aws_ecr_repository" "danial-ecs-jenkins" {
  name = var.ecr_repo_name
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_id" {
  value = aws_ecr_repository.danial-ecs-jenkins.id
}

output "ecr_registry_id" {
  value = aws_ecr_repository.danial-ecs-jenkins.registry_id
}

output "ecr_repository_url" {
  value = aws_ecr_repository.danial-ecs-jenkins.repository_url
}
