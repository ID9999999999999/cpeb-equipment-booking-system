# Limitations

This document records what the project does not currently claim.

## Current Project Maturity

The project is experimental and under active development.

It is not currently claimed to be:

- production-ready;
- stable;
- deployed;
- institutionally approved;
- secure for real university data;
- complete as a booking product.

## Functional Limitations

- Authentication and authorization are not complete.
- Booking conflict prevention must still be implemented and proven with automated tests.
- Database migrations and seed data may change.
- API behavior may change.
- Flutter screens are still early-stage.
- Audit and reporting features are planned but not complete.

## Security Limitations

- No real credentials should be used.
- No real student data should be stored.
- No private screenshots should be committed.
- No production deployment claim is made.

## Release Limitations

No stable release exists yet. A release should only be created after:

- CI is green;
- core setup is reproducible;
- the booking conflict rule is tested;
- known limitations are included in release notes.
