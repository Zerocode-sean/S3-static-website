# S3-static-website
A static website hosted in Amazon S3 and delivered by Amazon CloudFront,
provisioned with Terraform.

## Deployment

1. Install [Terraform](https://developer.hashicorp.com/terraform/downloads) and
   configure AWS credentials.
2. Initialize and review the deployment:

   ```sh
   terraform init
   terraform plan
   ```

3. Deploy it:

   ```sh
   terraform apply
   ```

Use the `cloudfront_url` output to open the website.

## Customizing

- Set `aws_region` to choose the AWS region.
- Set `bucket_name` to use a specific globally unique S3 bucket name. If it is
  omitted, Terraform creates a unique name.
- Set `project_name` to customize resource names and tags.
- Replace `index.html` and `error.html` with your own static site files.

Run `terraform destroy` when the resources are no longer needed.
