# GCP Terraform Code

## Terraform, tflint, and terragrunt versions
```
$ terraform version
Terraform v1.3.5

$ tflint --version
TFLint version 0.43.0

$ terragrunt --version
terragrunt version v0.40.2
```

## Configure terraform with GCP
Learn by doing in real, live practice environment with ACloudGuru cloud playground.

### 1. Allow the SDK to communicate with GCP
```
$ gcloud auth login --no-launch-browser
```

### 2. Create the Service Account key
```
$ gcloud iam service-accounts keys create terraform.json --iam-account <SERVICE_ACCOUNT_EMAIL>
```

### 3. Update project name 'playgroud
```
$ vi main.tf

provider "google" {
  ...
  project = "playground-x-y-z"
  ...
}

```

### 4. Terraform init; plan; apply; and destroy;
```
$ terraform init

$ terraform plan
$ terraform apply -auto-approve

$ terraform plan -destroy
$ terraform destroy -auto-approve
```