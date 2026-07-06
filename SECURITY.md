# Security Policy

## Supported Versions

This project is experimental and has no stable release yet.

| Version | Supported |
|---|---|
| main branch | Best-effort educational maintenance |
| releases | No stable release yet |

## Reporting a Vulnerability

Do not open a public issue containing secrets, private data, real credentials, or exploit details.

For now, report security concerns privately to the repository owner through GitHub account contact methods.

## Secret Handling Rules

This repository must not contain:

- real `.env` files;
- passwords;
- API tokens;
- private keys;
- recovery codes;
- personal documents;
- real student data;
- confidential university files;
- private screenshots.

## Emergency Protocol for Leaked Secrets

If a secret is committed accidentally:

1. Revoke or rotate the secret immediately.
2. Remove the secret from the current code.
3. Check whether the secret exists in Git history.
4. If necessary, rewrite history using a safe process such as `git filter-repo` or BFG Repo-Cleaner.
5. Force-push only after understanding the collaboration impact.
6. Document the incident privately.
7. Add or improve prevention checks.

## Supply Chain Notes

The project uses npm, Flutter/Dart packages, GitHub Actions, and Docker images. Dependency scanning and update automation should be kept enabled where possible.
