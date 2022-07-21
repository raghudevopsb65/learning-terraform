variable "a" {
  default = 100
}

// variable block is having one reference, here a is reference

output "a" {
  value = var.a
}

// variable in terraform can be accessed by var.var_name or ${var.var_name}

output "x" {
  value = "Value of a = ${var.a}"
}

output "values" {
  value = "Values, a = ${var.a}, b = ${var.b}, c = ${var.c} , d = ${var.d}"
}

// If you access variable with any combination of other strings then ${} is preferred

variable "b" {}
//  this variable b is declared in tfvars file


variable "c" {}
// this variable from cli of terraform , terraform apply -auto-approve -var c=400

variable "d" {}
// this variable from SHELL, export TF_VAR_d=500