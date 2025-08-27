# Terraform AWS EC2 Example

This project provisions a simple AWS EC2 instance using Terraform. It's designed for local development in Visual Studio Code with modular structure and best practices.

---

## 📦 Project Structure

terraform-aws-ec2/
├── main.tf              # Core infrastructure definition
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── provider.tf          # AWS provider config
├── terraform.tfvars     # Variable values (excluded from Git)
├── .gitignore           # Protect secrets and state
└── README.md            # Project instructions



---

## 🚀 Usage

### 1. Clone the Repository

```bash
git clone https://github.com/your-org/terraform-aws-ec2.git
cd terraform-aws-ec2


### 2. Initialize Terraform Directly

```bash
terraform init
terraform plan
terraform apply



### 3. Configure AWS Credentials
aws configure

Or set environment variables:
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"




 