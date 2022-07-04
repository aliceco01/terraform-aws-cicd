Ps Assignment: 




Build Infrastructure and CiCd pipeline using Terraform
To achieve the desired architecture.
The directory includes multiple tf file , each for its role in building the process .

 

- vpc.tf  :   	     creates a vpc
			     creates 2 private and 2 public subnets
			     creates an internet gateway to connect the VPC to the internet
			     creates a NAT gateway for the private subnet can
                       access the internet .

-ecr.tf                creates a container image in the ECR Repositories

-ecs.tf                creates ecs cluster to run 2 tasks of fargate from
                       the docker image on ECR repositories.

-codepipeline.tf       creates CI/CD pipeline to build the application

variable.tf            holds the definition of variables and there default
                       values.


All you need to do is --- enter the access key and secret key in the terraform.tfvars .

And apply.

After the terraform apply is done .

You need to push the docker file needed to the CodeCommit  repository 

https://git-codecommit.us-east-1.amazonaws.com/v1/repos/nedalrepo


and the pipeline is triggered and started.


