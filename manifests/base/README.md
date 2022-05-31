Must manually run

ubectl create secret -n policy-bot generic github-secret     --from-literal="GITHUB_APP_WEBHOOK_SECRET=policy-bot" --from-literal="GITHUB_APP_INTEGRATION_ID=INTEGRATION_ID" --from-literal="GITHUB_OAUTH_CLIENT_ID=CLIENT_ID"  --from-literal="GITHUB_APP_PRIVATE_KEY=GH_PRIV_KEY"  --from-literal="GITHUB_OAUTH_CLIENT_SECRET=SECRET"
