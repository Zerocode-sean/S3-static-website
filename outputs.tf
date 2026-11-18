output "cloudfront_url" {
  description = "Public HTTPS URL of the static website."
  value       = "https://${aws_cloudfront_distribution.website.domain_name}"
}

output "cloudfront_distribution_id" {
  description = "CloudFront distribution ID."
  value       = aws_cloudfront_distribution.website.id
}

output "bucket_name" {
  description = "Name of the private S3 bucket containing the website."
  value       = aws_s3_bucket.website.id
}
