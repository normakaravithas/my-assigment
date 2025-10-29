provider "aws" {
  region = var.aws_region
}

# IAM Role
resource "aws_iam_role" "Admin_role_min_project" {
  name = var.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = var.assume_service
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Attach AdministratorAccess or other managed policies
resource "aws_iam_role_policy_attachment" "Admin_role_min_project"{
  role       = aws_iam_role.this.name
  policy_arn = var.policy_arn
}

