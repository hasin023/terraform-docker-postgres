## Creating database using Terraform

### Prerequisites

- Terraform installed on your machine.
- Docker installed on your machine.

### Steps to create a database using Terraform

```bash
terraform init
terraform fmt
terraform validate

terraform plan -out=plan.out
# -out=plan.out is optional, it saves the plan to a file.
```

### Steps to apply

```bash
terraform apply

# -auto-approve
# terraform apply -auto-approve
terraform output
```

### Steps to destroy the database

```bash
terraform destroy

# -auto-approve
# terraform destroy -auto-approve
```

### Connecting to the database in Terminal

```bash
docker exec -it <container_name> psql -U postgres
```
