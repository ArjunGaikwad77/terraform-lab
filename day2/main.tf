terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

provider "local" {}

variable "filename" {
  description = "Name of the file"
  type        = string
}

variable "message" {
  description = "Message inside the file"
  type        = string
}

resource "local_file" "example" {
  filename = var.filename
  content  = var.message
}

output "file_created" {
  value = local_file.example.filename
}
