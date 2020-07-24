# Designate a cloud provider, region, and credentials

provider "aws" {
	region = "us-east-1"
	shared_credentials_file = "/Users/stateofmind/.aws/credentials"
}



# provision 4 AWS t2.micro EC2 instances named Udacity T2

 resource "aws_instance" "UdacityT2" {
 	ami = "ami-08f3d892de259504d"
 	count	= "4"
 	instance_type	= "t2.micro"
 	subnet_id = "subnet-0a69f099d51087a7c"

 }

# provision 2 m4.large EC2 instances named Udacity M4

 resource "aws_instance" "UdacityM4" {
 	ami = "ami-08f3d892de259504d"
 	count	= "2"
 	instance_type	= "m4.large"
 	subnet_id = "subnet-0a69f099d51087a7c"

 }
