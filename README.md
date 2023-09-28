# ec2-instance-using-terraform

Steps to Install Terraform on Ubuntu device:

1. sudo apt-get install unzip
2. wget https://releases.hashicorp.com/terraform/1.5.7/terraform_1.5.7_linux_amd64.zip -->check the latest version and install
3. unzip terraform_1.5.7_linux_amd64.zip
4. sudo mv terraform /usr/local/bin/  -->sudo install terraform /usr/local/bin/ is more reliable, it ensures ownership and permissions are correct
5. terraform --version -->verify the version

Commands followed:
1.  terraform init --> initializes a working directory containing Terraform configuration files
2.  terraform validate --> validates the configuration files in a directory
3.  terraform plan --> creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure
4.  terraform apply --> executes the actions proposed in a terraform plan
5.  terraform destroy --> to destroy the project infrastructure and free up the allocated resources


Issues encountered:

aws_instance.example: Creating...
╷
│ Error: creating EC2 Instance: InvalidAMIID.NotFound: The image id '[ami-067c21fb1979f0b27]' does not exist
│       status code: 400, request id: 9a7ff73f-bae7-4a3a-b99c-8ad88ea7a67d
│
│   with aws_instance.example,
│   on main.tf line 5, in resource "aws_instance" "example":
│    5: resource "aws_instance" "example" {
│


ami id provided was not matching with the region mentioned in the script.

-->Modified the region in the main.tf
