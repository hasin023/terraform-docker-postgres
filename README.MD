# Creating database using Terraform

## Prerequisites

- Terraform installed on your machine.
- Docker installed on your machine.

## Steps to create a database using Terraform

1. Clone the repository to your local machine.
2. Navigate to the directory where the `main.tf` file is located.

### Steps to initialize the configuration

```bash
terraform init
terraform fmt
terraform validate
```

### Steps to apply the configuration

```bash
terraform apply

# -auto-approve
# terraform apply -auto-approve
```

### Steps to check the output

```bash
# Check the output of the database connection string
terraform output
```

### Connect to the database

- Use the connection string from the output to connect to the database using your preferred database client or ORM.
- Alternatively, you can connect to the database using the following command in the terminal:

```bash
docker exec -it <container_name> psql -U postgres
```

- Replace `<container_name>` with the name of the PostgreSQL container created by Terraform.
- You can find the container name by running the output command:

```bash
terraform output
```

- The output will include the container name & the connection string - which you can use to connect to the database.

### Steps to destroy the configuration

If you want to destroy the resources created by Terraform, run the following command:

```bash
terraform destroy

# -auto-approve
# terraform destroy -auto-approve
```
