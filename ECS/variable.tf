variable "aws_region" {
  description = "AWS region where the ECS cluster will be created."
  type        = string
  default     = "us-west-2"  # Replace with your desired AWS region
}

variable "cluster_name" {
  description = "Name for the ECS cluster."
  type        = string
  default     = "danial-jenkins-ecs-cluster"
}

variable "ecr_repository_name" {
  description = "Name of the ECR repository where your containers are stored."
  type        = string
  default     = "danial-jenkins-ecr-repo"
}

variable "ecr_image_tag" {
  description = "Tag of the specific ECR image you want to use."
  type        = string
  default     = "node-danial-app"  # Replace with the specific tag of your desired ECR image
}
