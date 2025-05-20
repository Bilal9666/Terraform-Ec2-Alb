# AWS EC2 Auto Scaling Group with Load Balancer (Terraform)

This project uses *Terraform* to provision an *Auto Scaling Group* behind an *Application Load Balancer (ALB)* on *Ubuntu EC2 instances*, complete with a security group, VPC integration, and Apache web server installation.

---

## Architecture Diagram

- 2 public subnets in different availability zones
- Application Load Balancer in front
- Auto Scaling Group with Launch Template
- Ubuntu EC2 instances running Apache