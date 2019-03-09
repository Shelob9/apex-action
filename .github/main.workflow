workflow "Publish to SNS topic on push" {
  on = "push"
  resolves = ["EmailMessage"]
}

action "EmailMessage" {
  uses = "./.github/actions/generate-email-message"
}

