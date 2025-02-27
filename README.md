
# Infrastructure and CI/CD Pipeline Deployment with Terraform

![Architecture Diagram](https://user-images.githubusercontent.com/100461037/173172327-187f4083-160c-4695-9425-00669d177f60.png)

This repository provides a comprehensive Terraform configuration to provision infrastructure and establish a CI/CD pipeline for the target architecture. The configuration is modularized into multiple `.tf` files, each dedicated to a specific component of the deployment process.

## Terraform Configuration Files

- **`vpc.tf`**  
  - Provisions a Virtual Private Cloud (VPC).  
  - Creates 2 public and 2 private subnets.  
  - Attaches an Internet Gateway to enable VPC connectivity to the internet.  
  - Deploys a NAT Gateway to allow outbound internet access from the private subnets.

- **`ecr.tf`**  
  - Establishes an Amazon Elastic Container Registry (ECR) repository to store container images.

- **`ecs.tf`**  
  - Sets up an Amazon Elastic Container Service (ECS) cluster.  
  - Configures the cluster to run 2 Fargate tasks using the Docker image stored in the ECR repository.

- **`codepipeline.tf`**  
  - Implements a CI/CD pipeline to automate the build and deployment of the application.

- **`variable.tf`**  
  - Defines variables and their default values used across the Terraform configuration.

## Getting Started

### Prerequisites
- Terraform installed on your local machine.
- AWS credentials (Access Key and Secret Key) with appropriate permissions.

### Deployment Steps
1. **Configure Credentials**  
   - Open the `terraform.tfvars` file.  
   - Input your AWS Access Key and Secret Key.

2. **Apply the Configuration**  
   - Run `terraform init` to initialize the working directory.  
   - Execute `terraform apply` to provision the infrastructure.  
   - Review the proposed changes and confirm by typing `yes`.

3. **Push the Docker Image**  
   - After the infrastructure is deployed, push your Dockerfile and application code to the AWS CodeCommit repository specified in the setup.  
   - This action will automatically trigger the CI/CD pipeline.

## Pipeline Execution
Once the Docker file is pushed to the CodeCommit repository, the pipeline defined in `codepipeline.tf` will initiate. It will build, test, and deploy the application to the ECS cluster via Fargate.

![Pipeline Diagram](https://user-images.githubusercontent.com/100461037/173172340-f11305b5-66d0-4055-af36-eaeec5c7b181.png)


