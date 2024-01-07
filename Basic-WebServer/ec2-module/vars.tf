variable "ami_id" {
    type = string
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "availability_zone" {
    type = string
}
variable "key-id" {
    type = string
    
}
variable "user-data" {
    type = string
}
