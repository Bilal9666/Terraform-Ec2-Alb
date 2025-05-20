variable "vpc_id" {
  description = "The ID of the VPC where the security group will be created."
  type        = string
}

variable "public_subnet" {
  description = "A list of public subnet IDs where the security group will be applied."
  type        = list(string)
  
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  type        = string
  
}

variable "instance_type" {
  description = "The type of EC2 instance to launch."
  type        = string
  default     = "t2.micro"
  
}

