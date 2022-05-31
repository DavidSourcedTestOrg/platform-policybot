#!/usr/bin/env bash

if [ -f "/opt/github-app-secrets/GITHUB_APP_WEBHOOK_SECRET" ]; then
    echo "Already provisioned secrets"
    exit 0
fi

openssl genrsa -out key.pem 4096


github_app_webhook_secret=policy-bot
github_oauth_client_id=policy-bot
github_oauth_client_secret=policy-bot
github_app_integration_id=policy-bot
github_app_private_key=$(cat key.pem)

kubectl create secret -n "${NAMESPACE}" generic github-app-secrets --from-literal="GITHUB_APP_INTEGRATION_ID=${github_app_integration_id}" \
    --from-literal="GITHUB_APP_WEBHOOK_SECRET=${github_app_webhook_secret}" \
    --from-literal="GITHUB_OAUTH_CLIENT_ID=${github_oauth_client_id}" \
    --from-literal="GITHUB_APP_PRIVATE_KEY=${github_app_private_key}" \
    --from-literal="GITHUB_OAUTH_CLIENT_SECRET=${github_oauth_client_secret}"
