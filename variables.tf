variable "region" {
  type = string
}

variable "service_name" {
  type = string
}

variable "container_image" {
  type = string
  description = "Imagem com tag para deployment da imagem n oecr"
}

variable "cluster_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}

variable "service_port" {
  type = number
}

variable "service_cpu" {
  type = number
}

variable "service_memory" {
  type = number
}

variable "service_listener" {
  type = string
}

variable "service_task_execution_role" {
  type = string
}

#variable "service_launch_type" {
#  type = string
#}

variable "service_launch_type" {
  type = list(object({
    capacity_provider = string
    weight = number
  }))
  default = [ {
    capacity_provider = "SPOT"
    weight = 100
  } ]
}

variable "service_task_count" {
  type = number
}

variable "service_hosts" {
  type = list(string)
}

variable "service_healthcheck" {
  type = map(any)
}

variable "environment_variables" {
  type = list(map(string))
}

variable "capabilities" {
  type = list(string)
}

variable "scale_type" {
  type = string
  default     = null
}

variable "task_minimum" {
  type = number
  default     = 3
}

variable "task_maximum" {
  type = number
  default     = 10
}


variable "scale_out_cpu_threshold" {
  type = number
  default     = 80
}

variable "scale_out_adjustment" {
  type = number
  default     = 1
}

variable "scale_out_comparison_operator" {
  type = string
  default     = "GreaterThanOrEqualToThreshold"
}

variable "scale_out_statistic" {
  type = string
  default     = "Average"
}

variable "scale_out_period" {
  type = number
  default     = 60
}

variable "scale_out_evaluation_periods" {
  type = number
  default     = 2
}

variable "scale_out_cooldown" {
  type = number
  default     = 60
}

variable "scale_in_cpu_threshold" {
  type = number
  default     = 30
}

variable "scale_in_adjustment" {
  type = number
  default     = -1
}

variable "scale_in_comparison_operator" {
  type = string
  default     = "LessThanOrEqualToThreshold"
}

variable "scale_in_statistic" {
  type = string
  default     = "Average"
}

variable "scale_in_period" {
  type = number
  default     = 120
}

variable "scale_in_evaluation_periods" {
  type = number
  default     = 3
}

variable "scale_in_cooldown" {
  type = number
  default     = 120
}

variable "scale_tracking_cpu" {
  type = number
  default     = 80
}

variable "alb_arn" {
  type = string
  default     = null
}

variable "scale_tracking_requests" {
  type = number
  default     = 0
}