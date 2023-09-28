provider "aws" {
    region = "ap-south-1"  # AWS region setting
}

resource "aws_instance" "example" {
    ami           = "ami-067c21fb1979f0b27"  # Provide appropriate AMI ID
    instance_type = "t2.micro"
    tags          = {
	"Name"    = "TerraformEC2"
	}
}
