variable "ami_id" {
  description = "this is ubuntu ami id"
  default     = "ami-053b0d53c279acc90"
}

variable "tags" {
  type = map(string)
  default = {
    Name = "Swathi's ec2"
  }
}
