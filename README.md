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



🧠 Terraform Is Reusing Old State
The instance IDs i-07714e27ac6775c97 and i-052be6f832f8f6b42 are terminated, but Terraform still thinks they exist because it’s referencing them in its state file. So when you run terraform apply, it doesn’t create new instances — it just assumes the old ones are still valid.
 How to Fix It
🔧 Option 1: Remove the Stale Resource from State
Run this locally or add it to your workflow:

bash
terraform state rm aws_instance.web


This tells Terraform: “Forget about the old instance.”

Then re-run:

bash
terraform apply -auto-approve -var-file="terraform.tfvars"