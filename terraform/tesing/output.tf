output "instance_id" {
    description = "Id of the instance"
  value = aws_instance.ec2_instance.id
  
}

output "instance_name" {
    description = "Name of the instance"
  value = aws_instance.ec2_instance.tags["Name"]
  
}