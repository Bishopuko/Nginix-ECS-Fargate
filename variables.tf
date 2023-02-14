variable "aws_region" {
  default     = "us-east-1"
}

variable "ecs_task_execution_role_name" {
  default = "TaskRole"
}

variable "ecs_auto_scale_role_name" {
  default = "AutoRole"
}

variable "az_count" {
  default     = "2"
}

variable "app_image" {
  default     = "nginx:latest"
}

variable "app_port" {
  default     = 80
}

variable "app_count" {
  default     = 2
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  default     = 256
}

variable "fargate_memory" {
  default     = 1024
}