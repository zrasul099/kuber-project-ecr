provider "aws" {
    region = "us-east-2"
  
}
resource "aws_ecr_repository" "ecr-repo" {
  name = "ecr-repo"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
  tags = {
  Name = "ecr-repo"
  Environment = "Dev"
  }
}
output "repository_url" {
    value = aws_ecr_repository.ecr-repo.repository_url
  
}