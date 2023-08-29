variable "port" {
  description = "service port"
  type        = number
}

variable "target_port" {
  description = "app port"
  type        = number
}

variable "image" {
  description = "app image"
  type        = string
}

variable "replicas" {
  description = "number of replicas"
  type        = number
}

variable "name" {
  description = "name of conteiner"
  type        = string
}