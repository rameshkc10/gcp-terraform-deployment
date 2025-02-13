# gcp-terraform-deployment
**main.tf:**


Defines the Google Cloud provider and sets up a storage bucket.
Enables versioning on the storage bucket.
Assigns the roles/storage.admin IAM role to a specific user (rameshkc.tech@gmail.com).

**deploy.yml:**

A GitHub Actions workflow to automate the deployment of the Terraform configuration.
Authenticates to Google Cloud and runs the Terraform commands (init, plan, apply) to set up the infrastructure
