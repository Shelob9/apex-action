# AWS SNS Example

A working example of an AWS [SNS](https://aws.amazon.com/sns/)-powered Action, that delivers an email message to all subscribers of an SNS topic, summarizing a [`push` event](https://developer.github.com/v3/activity/events/types/#pushevent).

## Usage

1. Provide required secrets
1. Subscribe an email address to the SNS topic

### Provide required secrets

- `AWS_ACCESS_KEY_ID` – **Required** The AWS access key part of your credentials ([more info](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys))
- `AWS_SECRET_ACCESS_KEY` – **Required** The AWS secret access key part of your credentials ([more info](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys))

### Subscribe an email address to the SNS topic

To subscribe an email to the SNS topic:

```bash
aws sns subscribe --topic-arn $TOPIC_ARN --protocol email --notification-endpoint $YOUR_EMAIL_ADDRESS
```

This could also be configured as part of the included `main.workflow`.

## License

This repository is [licensed under CC0-1.0](LICENSE), which waives all copyright restrictions.
