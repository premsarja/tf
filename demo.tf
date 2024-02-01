variable "prem" {
  default = 10
}

output "prem" {
  value = var.prem
}

output "sag" {
  value = var.prem
}

variable "pi" {
  default  =  {
    name = "prem"
    age  = "27"
  }
}

output "sagar" {
  value = var.pi
}