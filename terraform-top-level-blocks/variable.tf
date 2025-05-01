variable "vpc_cidr_block" {
  type        = string
  description = "vpc cidr block."
  default     = "10.0.0.0/16"
}

variable "subnet_1_cidr" {
  description = "value for subnet cidr"
  type        = string
  default     = "10.0.1.0/24"
}

variable "subnet_2_cidr" {
  type        = string
  description = "Value of subnet 1 cidr"
  default     = "10.0.2.0/24"
}

# variable "subnet_1_az" {
#     type = string
#     description = "Value for subnet 1 az"
#     default = "us-east-1a"
# }

# variable "subnet_2_az" {
#     type = string
#     description = "Value for subnet 2 az"
#     default = "us-east-1b" 
# }
