variable "ami" {  
    description = "The AMI ID to use for the EC2 instance"
    type = string
    default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
    description = "The type of EC2 instance to create"
    type = string
    default     = "t2.micro"
  
}

variable "instance_name" {
    description = "The name tag for the EC2 instance"
    type = string
    default     = "MyEC2Instance"
  
}
