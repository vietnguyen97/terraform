
# Project in source learn AWS

This is source code manage configuration by Terraform

# Why using Terraform

As the system get bigger and bigger. The system will difficult manage. So we have a tool manage infrastructure

We have more tool like Ansible, Chef, SaltStack, Terraform,...

Manage Infrastructure usually divided into 2 types

- Configuration Management vs Provisioning (Ansible, Chef, SaltStack)
- Mutable Infrastructure vs Immutable Infrastructure (Terraform)

Design Configuration Management vs Provisioning will install and management software on those server available. When you update server, you will run command software update on server. Through time, your server will have more version different

Design Mutable Infrastructure vs Immutable Infrastructure will build your own server. This is configuration databases, networking, load balancers,.. and config your application will give it to another tool. Example: Terraform will configuration databases, networking, load balancers, While Docker will build your application to images. So your application will always be the latest

## Features

- Learn Terraform
- Using Terraform created VPC, EC2, Networking on AWS

## Future

- Update using Terraform created EKS, ECS, ECR and more
- Future using manage resource for Aws-app and Aws-server source


## Run project

To run this project.

Created terraform 
```bash
  terraform init 
```

Validation syntax terraform
```bash
  terraform validate
```

Check file change
```bash
  terraform fmt
```

Check terraform, that what be the execution

```bash
  terraform plan
```

Execution terraform 

```bash
  terraform apply
```

Destroy

```bash
  terraform destroy
```


## Tech Stack

**Server:** Terraform


## Documentation

[Terraform](https://www.terraform.io/)



## 🚀 About Me
I'm a full stack developer...

