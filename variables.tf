variable "aws_access_key" {
    decscription = "AWS Access Key"
}

variable "aws_secret_key" {
    description = "AWS Secret Key"
}

variable "aws_region" {
    description = "Which AWS Region will be used ?"
    default = "eu-west-1"
}

variable "ec2_instance-root_volume_size" {
  description = "Size (in GB) of the Root Volume for the EC2 Instances"
  default = 10
}

variable "ec2_launch_conf-name" {
  description = "EC2 Launch Configuration Name?:"
}