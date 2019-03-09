workflow "Publish to SNS topic on push" {
  on = "push"
  resolves = ["EmailMessage"]
}

action "EmailMessage" {
  uses = "./.github/actions/generate-email-message"
}

workflow "New workflow" {
  on = "pull_request"
  resolves = ["GitHub Action for Docker"]
}

action "GitHub Action for Docker" {
  uses = "docker://awhalen/docker-php-composer-nod"
  args = "npm install && npm test"
}
