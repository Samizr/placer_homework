variable environment {
  type        = string
  default     = "samizr-placer"
  description = "Name of the project"
}

variable region {
  type        = string
  default     = "us-central1"
  description = "description"
}

variable project_id {
  type        = number
  default     = 232615064711
  description = "GCP Project ID given to project"
}

//TODO: Move to .tfvars?