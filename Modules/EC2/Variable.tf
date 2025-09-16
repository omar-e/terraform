variable "instance_type" {
    type = string
    default = "t2.micro"
    
  
}
locals {
  instance_ami = "ami-046c2381f11878233"
}


output "instance_id" {
    description = "This prints out the instance id "
    value = aws_instance.this.id
}



