package main

# AI tools frequently omit the block_public_acls and block_public_policy flags
# This policy enforces that all S3 buckets MUST explicitly block public access.

deny[msg] {
    resource := input.resource.aws_s3_bucket_public_access_block[_]
    
    not resource.block_public_acls == true
    msg = sprintf("AI-IaC Guardrail: S3 bucket access block must enable 'block_public_acls'. Found in: %v", [resource.id])
}

deny[msg] {
    resource := input.resource.aws_s3_bucket_public_access_block[_]
    
    not resource.block_public_policy == true
    msg = sprintf("AI-IaC Guardrail: S3 bucket access block must enable 'block_public_policy'. Found in: %v", [resource.id])
}
