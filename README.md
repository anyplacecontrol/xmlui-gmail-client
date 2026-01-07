# xmlui-gmail-client — Credential setup

This project uses Google OAuth credentials. Do NOT commit your real credentials.

Update `config.json` to use your credentials. 


## Google Desktop OAuth

To set up Google Desktop OAuth, follow these steps:

1. Go to the Google Developer Console.
2. Create a new project or select an existing one.
3. Enable the Google Desktop API for your project.
4. Create OAuth 2.0 credentials and download the JSON file.
5. Update your `config.json` with the new credentials.

Make sure to keep your credentials secure and do not share them publicly.

## Google Desktop OAuth (Testing)

Follow these concise steps to create Desktop OAuth credentials for testing:

1. Create a Google Cloud project: open the Google Cloud Console → "New Project" → create.
2. Enable the Gmail API: APIs & Services → Library → search "Gmail API" → Enable.
3. OAuth consent screen: APIs & Services → OAuth consent screen → select "External" → create; fill App name, support email, developer contact → Save.
4. Scopes: add only `https://www.googleapis.com/auth/gmail.readonly` on the consent screen.
5. Test users: add your email under "Test users".
6. Create credentials: APIs & Services → Credentials → Create Credentials → OAuth client ID → select "Desktop app" → Create → download the JSON (contains `client_id` and `client_secret`).
7. Verify: confirm Application type is "Desktop application", no redirect URIs required, and scope is `gmail.readonly`.

Notes:
- Desktop apps don't need redirect URIs; testing mode restricts sign-in to test users.
- Keep credentials in `.creds` and never commit them.
- After placing creds in `.creds`, update `config.json` (or use the scripts in this README) to populate `__GMAIL_CLIENT_ID__` and `__GMAIL_CLIENT_SECRET__`.


