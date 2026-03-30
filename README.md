# AWS IAM Terraform Modules

A collection of reusable Terraform modules for managing AWS IAM resources — policy documents, role policies, roles, and OIDC providers.

## Structure

```
modules/
├── policy-document/   # aws_iam_policy_document data sources
├── role-policy/       # aws_iam_role_policy resources (inline policies attached to roles)
├── role/              # aws_iam_role resources
└── oidc-provider/     # aws_iam_openid_connect_provider resources
```

## Modules

### policy-document

| Module | Description |
|--------|-------------|
| `cloudwatch-logs-write` | Write logs to a CloudWatch log group |
| `cloudwatch-logs-write-sfn` | Write logs to a CloudWatch log group (Step Functions) |
| `dynamodb-stream-read` | Read from a DynamoDB stream |
| `dynamodb-table-read` | Read from a DynamoDB table |
| `dynamodb-table-read-write` | Read and write to a DynamoDB table |
| `dynamodb-table-write` | Write to a DynamoDB table |
| `ecr-repository-pull` | Pull images from an ECR repository |
| `ecr-repository-push` | Push and pull images to an ECR repository |
| `github-actions-oidc-assume-role` | Allow GitHub Actions OIDC to assume a role |
| `kinesis-stream-read` | Read from a Kinesis stream |
| `kinesis-stream-write` | Write to a Kinesis stream |
| `kms-key-decrypt` | Decrypt using a KMS key |
| `kms-key-resource` | Full resource-level KMS key management |
| `kms-key-sign` | Sign using a KMS key |
| `kms-read` | Read KMS key metadata |
| `lambda-function-invoke` | Invoke a Lambda function |
| `rds-connect` | Connect to an RDS instance via IAM authentication |
| `s3-access-point-read` | Read via an S3 access point |
| `s3-bucket-read` | Read objects from an S3 bucket |
| `s3-bucket-write` | Write objects to an S3 bucket |
| `s3-object-lambda-access-point-read` | Read via an S3 Object Lambda access point |
| `secretsmanager-secret-read` | Read a Secrets Manager secret |
| `secretsmanager-secret-read-write` | Read and write a Secrets Manager secret |
| `service-assume-role` | Allow an AWS service to assume a role |
| `sfn-state-machine-invoke-http-endpoint` | Allow Step Functions to invoke an HTTP endpoint |
| `sfn-state-machine-start-execution` | Start a Step Functions state machine execution |
| `sns-topic-publish` | Publish to an SNS topic |
| `sqs-queue-consume` | Consume messages from an SQS queue |
| `sqs-queue-send` | Send messages to an SQS queue |
| `timestream-table-read` | Read from a Timestream table |
| `timestream-table-write` | Write to a Timestream table |
| `vpc-eni-write` | Create and manage VPC network interfaces |
| `xray-trace` | Send traces to X-Ray |

### role-policy

| Module | Description |
|--------|-------------|
| `cloudwatch-logs-write` | Inline policy for writing to CloudWatch Logs |
| `cloudwatch-logs-write-sfn` | Inline policy for writing to CloudWatch Logs (Step Functions) |
| `ecr-repository-pull` | Inline policy for pulling from an ECR repository |
| `ecr-repository-push` | Inline policy for pushing to an ECR repository |
| `lambda-function-invoke` | Inline policy for invoking a Lambda function |
| `s3-object-lambda-access-point-read` | Inline policy for reading via S3 Object Lambda |
| `secretsmanager-secret-read` | Inline policy for reading a Secrets Manager secret |
| `secretsmanager-secret-read-write` | Inline policy for reading and writing a Secrets Manager secret |
| `sfn-state-machine-invoke-http-endpoint` | Inline policy for Step Functions HTTP endpoint invocation |
| `sfn-state-machine-start-execution` | Inline policy for starting a Step Functions execution |
| `sqs-queue-consume` | Inline policy for consuming from an SQS queue |
| `sqs-queue-send` | Inline policy for sending to an SQS queue |

### role

| Module | Description |
|--------|-------------|
| `ecs-task` | IAM role for ECS tasks |
| `ecs-task-execution` | IAM role for ECS task execution |
| `github-actions-oidc` | IAM role assumable by GitHub Actions via OIDC |

### oidc-provider

| Module | Description |
|--------|-------------|
| `github-actions` | OIDC provider for GitHub Actions |

## Requirements

- Terraform `>= 1.4.0`
- AWS provider `>= 4.64.0`