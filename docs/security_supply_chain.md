# Security Supply Chain Notes

This project currently uses a lightweight supply-chain security baseline suitable for an experimental educational repository.

## Implemented Baseline

- `.gitignore` excludes `.env` and common secret-like files.
- `.env.example` uses placeholder values only.
- GitHub Actions uses read-only repository permissions by default.
- Dependabot is configured for npm, Flutter/Dart, and GitHub Actions.
- CI includes dependency audit for backend npm dependencies.
- `SECURITY.md` documents secret-handling and emergency response.

## Recommended Later Improvements

These are intentionally deferred until the project is more mature:

- pin GitHub Actions to full commit SHA values;
- add CodeQL;
- add dependency review;
- add gitleaks or TruffleHog secret scanning;
- generate SBOM artifacts;
- add OpenSSF Scorecard;
- sign releases;
- add artifact provenance.
