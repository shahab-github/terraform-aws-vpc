
variable "name" {
  default = "myvpc"
}

variable "cidr" {
  default = "192.168.0.0/16"
}

variable "availability_zone" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_cidr" {
  default = ["192.168.1.0/24", "192.168.2.0/24"]
}
