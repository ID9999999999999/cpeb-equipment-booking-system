# Contributing

Thank you for your interest in improving CPEB Equipment Booking System.

This repository is currently an experimental educational project. Contributions should keep the project honest, reproducible, and easy to review.

## Ground Rules

- Keep changes small and focused.
- Do not add production-readiness claims unless they are proven.
- Do not commit real `.env` files, secrets, passwords, API keys, recovery codes, personal documents, or real student data.
- Add or update tests when changing behavior.
- Update documentation when changing setup, architecture, API behavior, or project scope.

## Development Flow

1. Create a focused branch.
2. Make the change.
3. Run checks:

```bash
make structure-check
make lint
make format-check
make test
```

4. Open a pull request using the template.
5. Clearly list limitations or unfinished work.

## Commit Style

Use clear commit messages, for example:

```text
docs: add reproducibility guide
test: add booking overlap smoke test
ci: add repository structure check
```

## Review Expectations

A pull request should explain:

- what changed;
- why it changed;
- how it was verified;
- what remains incomplete.
