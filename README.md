# Terraform AWS EC2 Deployment

This repository contains Terraform configurations for deploying an Amazon EC2 instance on AWS infrastructure. The Terraform scripts automate the deployment of an EC2 instance, including provisioning security groups, key pairs, and other necessary resources. By leveraging Terraform, this project provides a streamlined and reproducible way to deploy EC2 instances on the AWS cloud platform.

## Usage

### Prerequisites

Before using these Terraform configurations, ensure you have the following prerequisites installed:

- [Terraform](https://www.terraform.io/downloads.html): Ensure Terraform is installed on your local machine.
- [AWS CLI](https://aws.amazon.com/cli/): Configure AWS CLI with your AWS credentials for Terraform to authenticate with AWS.

### Getting Started

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/swathipunreddy/Terraform-aws-ec2-deployment.git

### Below is your Terraform configuration structured in a typical directory layout for version control and ease of use:
```bash
terraform/
│
├── main.tf
├── variables.tf
└── outputs.tf
 ```
### Navigate to the project directory:

```bash
cd aws-ec2-terraform-automation
 ```
### Initialize Terraform:

```bash
terraform init
 ```
Customize the Terraform variables in variables.tf to match your requirements, such as AMI ID, instance type, and tags.


### Review and apply the Terraform configurations:

```bash
terraform apply
 ```
After successful deployment, Terraform will output the ARN and public IP address of the deployed EC2 instance.

### Contributing
Contributions are welcome! If you have any suggestions, improvements, or feature requests, feel free to open an issue or create a pull request.

