# 🚀 Terraform EKS Cluster Automation

Welcome to the **Terraform EKS Cluster Automation** project! This repository is a one-stop solution for provisioning a fully functional Kubernetes cluster on AWS, using the power of **Terraform**. This is not your typical "Hello World" setup—it's an entire environment where infrastructure as code (IaC) meets cutting-edge cloud automation.

## 🌟 Why This Project?

In the world of DevOps, speed, reliability, and consistency are key. With this project, I aim to automate the deployment of a **highly available** and **scalable** Kubernetes cluster using **Amazon Elastic Kubernetes Service (EKS)**, all while minimizing manual intervention. The result? A Kubernetes environment ready to handle production-level workloads with minimal effort. Oh, and did I mention? It's all fully reproducible!

## 🔧 What’s Inside?

Here’s a breakdown of the Terraform files that bring this project to life:

```
📁 terraform-eks-cluster/
├── backend.tf              # Configuration for remote state storage.
├── data-sources.tf         # Dynamic data fetching for flexibility.
├── eks-cluster.tf          # EKS Cluster definition and config.
├── node-groups.tf          # Managed worker node groups.
├── outputs.tf              # Key information outputs after running the configuration.
├── providers.tf            # AWS provider configurations.
├── terraform.tfvars        # Customizable variables for your environment.
├── variables.tf            # Input variables.
└── vpc.tf                  # VPC setup for EKS.
```

## 🛠️ Key Features

- **Full Automation**: Completely spin up an EKS Cluster with just one command! No need to worry about manual configurations.
- **Dynamic Node Groups**: Automatically provision and manage EC2 worker nodes that will run your Kubernetes workloads.
- **Scalable VPC Architecture**: A well-designed Virtual Private Cloud (VPC) architecture tailored for your EKS cluster, with public and private subnets.
- **IAM Role Management**: Fully managed Identity and Access Management (IAM) roles and policies for both the EKS control plane and worker nodes.
- **Outputs for Easy Access**: All key data like VPC ID, EKS Cluster name, and node group details are presented in a neat summary after deployment.

## 🚀 How It Works (The Magic!)

1. **VPC Setup**: 
   Terraform provisions a fault-tolerant VPC with all the necessary networking components (subnets, gateways, route tables). This ensures your EKS cluster operates in a secure and scalable network environment.

2. **EKS Cluster Creation**: 
   Using the power of AWS EKS, we launch a managed Kubernetes cluster. Say goodbye to manual control plane management! AWS takes care of the heavy lifting.

3. **Node Groups**: 
   Terraform automates the provisioning of worker node groups, ensuring they are ready to handle containerized workloads right from the get-go.

4. **Remote State Management**:
   Remote state storage using **S3** ensures that your infrastructure state is shared and reliable. The `backend.tf` ensures that Terraform state is stored safely for team collaboration and disaster recovery.

## ⚙️ Prerequisites

Before diving in, make sure you’ve got the following ready:

- **AWS CLI**: Configured with the right access permissions.
- **Terraform**: Installed and ready to work its magic.
- **S3 Bucket**: For storing your Terraform remote state.
- **DynamoDB Table**: For state locking and consistency (optional, but highly recommended).

## 🚀 Quickstart Guide

Here’s how you can get your own EKS cluster up and running in no time:

1. **Clone the Repo**:

   ```bash
   git clone https://github.com/your-username/terraform-eks-cluster.git
   cd terraform-eks-cluster
   ```

2. **Initialize Terraform**:

   This prepares the working directory with Terraform plugins and modules.

   ```bash
   terraform init
   ```

3. **Preview the Changes**:

   It’s always good practice to see what’s about to happen.

   ```bash
   terraform plan
   ```

4. **Apply the Configuration**:

   Ready to deploy? Just apply the changes and let Terraform handle the rest.

   ```bash
   terraform apply
   ```

5. **Grab Your Outputs**:

   Once completed, Terraform will display important outputs like the cluster name, VPC ID, and node group ARNs.

   ```bash
   terraform output
   ```

## 📜 Customization Options

You can tweak the following parameters in `terraform.tfvars` to adjust the setup to your needs:

- **region**: AWS region where the infrastructure will be deployed.
- **eks_cluster_name**: A custom name for your EKS cluster.
- **node_group_instance_type**: The EC2 instance type for the worker nodes.
- **desired_capacity**: Desired number of worker nodes.
- **max_size**: Maximum number of worker nodes.

## 📦 Outputs You Care About

At the end of the process, Terraform provides the following essential outputs:

- **EKS Cluster Name**: Your cluster’s name for future reference.
- **VPC ID**: The ID of the VPC hosting your cluster.
- **Node Group ARNs**: The Amazon Resource Names (ARNs) of your worker node groups.
- **Subnet IDs**: The subnet IDs where your Kubernetes nodes are deployed.

## 🧩 What’s Next?

- **Scaling Up**: Add more node groups for specific workloads, or increase the size of existing ones.
- **Service Discovery**: Set up **AWS ALB Ingress Controller** to manage load balancing for Kubernetes services.
- **Monitoring**: Integrate with **Prometheus** and **Grafana** for advanced monitoring.

## 📝 Notes

This project was built as part of my DevOps learning journey to automate and manage production-ready Kubernetes clusters in AWS. Feel free to fork it, play around, or contribute back!

---

## 🙌 Conclusion

With this Terraform setup, provisioning and managing an EKS cluster is as easy as running a few commands. No more manual configurations, and no more headaches just smooth, reliable infrastructure!

---

### 🚀 Let’s Terraform the world!



