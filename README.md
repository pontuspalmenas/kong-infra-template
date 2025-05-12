# Kong Infrastructure Template

This is meant as a template to rapidly build Kong (Konnect) demos, Proof of Concepts, etc. It's not meant for production like use. It deliberately does not support environments. The Terraform structure reflects this.

This template uses [Taskfile](https://taskfile.dev) to bootstrap and wrap Terraform. This simplifies things like S3 terraform state backend, secrets management with AWS Secrets Manager for Konnect PAT, etc.
You can also use Taskfile to manage other resources, like your local kind-cluster, with the variables shared across all resources: AWS, Konnect, local.

Being a template, and not a framework, you can use whatever parts of this you need.

## Usage
* Use this repo as a base for your new project
* Create a `.env` file in the root directory, with the following:
```
PROJECT=my-example-project
OWNER=my@example.com
AWS_REGION=eu-north-1
```
* Go to Konnect and create a new Personal Access Token.
* Go to AWS and create a secret with name `$PROJECT/konnect` (e.g.: `my-example-project/konnect`) with a key `kpat` and put your Konnect Personal Access Token (PAT) there.
* Run `task tf-create-backend`. This will create an S3 bucket and a `terraform/` file with the backend definition.
* Run `task tf-init` to init Terraform with state in remote S3 bucket.
* Create a `terraform/lab.tfvars` with your variables. Secrets like Konnect PAT should be defined as env vars (`TF_VAR_my_secret`), stored in AWS Secrets Manager. This is already managed by Taskfile.
* Run `task tf-plan`. This will verify that everything is set up correctly.

You can also customize the Terraform command by appending any arguments, like `-auto-approve` with double-dash:

```
task tf-apply -- -auto-approve
```