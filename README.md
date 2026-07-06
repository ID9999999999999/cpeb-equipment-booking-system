# Cross-Platform University Equipment Booking System

![CI](https://github.com/ID9999999999999/cpeb-equipment-booking-system/actions/workflows/ci.yml/badge.svg)

A cross-platform university equipment booking and resource scheduling system for laboratories and educational departments.

The central engineering rule of the project is simple: **two active bookings for the same equipment item must not overlap in time.**

## Project Identity

| Field | Value |
|---|---|
| Technical name | CPEB Equipment Booking System |
| Repository name | `cpeb-equipment-booking-system` |
| Short code | CPEB |
| Status | Experimental / active development |
| Target users | Students, laboratory staff, department administrators, and academic supervisors |
| Main domain | Equipment booking, room reservation, approval workflow, and scheduling conflict prevention |
| License status | All rights reserved until an explicit open-source license is selected |

This project is an educational software engineering project. It is not presented as production-ready, stable, secure for real institutional deployment, or complete.

## Problem

University laboratories often manage equipment and room reservations through messages, spreadsheets, paper notes, or informal communication. This makes the process difficult to control and verify.

Common problems include:

- unclear equipment availability;
- double bookings for the same resource;
- missing approval history;
- weak responsibility tracking;
- poor visibility of equipment status;
- no reliable audit trail for booking decisions.

## Proposed Solution

CPEB is planned as a cross-platform application with a backend API and relational database. Users can request equipment or rooms, while authorized staff can approve, reject, monitor, and audit booking requests.

The project focuses on one verifiable invariant first:

> For one equipment item or room, two active reservations must not overlap.

Example:

```text
Booking A: Camera 01 — 10:00 to 12:00 — approved
Booking B: Camera 01 — 11:00 to 13:00 — requested
```

Booking B must be rejected or blocked because its time interval overlaps with Booking A.

## Current Scope

The planned system includes:

- equipment and room catalogue;
- equipment status tracking;
- booking request creation;
- booking approval and rejection workflow;
- conflict prevention for overlapping reservations;
- user roles for students, staff, and administrators;
- audit-oriented reservation history;
- backend REST API;
- cross-platform application structure;
- database schema and seed data;
- API documentation;
- automated test foundation;
- Docker-based local execution.

## Technology Stack

| Layer | Technology |
|---|---|
| Cross-platform app | Flutter |
| Backend API | NestJS |
| Database | PostgreSQL |
| ORM | Prisma |
| API documentation | Swagger / OpenAPI |
| Backend testing | Jest |
| Frontend testing | Flutter test |
| Local environment | Docker Compose |
| Version control | Git and GitHub |

## Repository Structure

```text
app/                    Flutter cross-platform application
backend/                NestJS backend API
backend/prisma/         Prisma schema and seed logic
backend/src/            Backend source code
backend/test/           Backend tests
configs/                Optional configuration examples and notes
docs/                   Architecture, API, database, and UI documentation
evidence/               Screenshots, logs, test output, and proof materials
examples/               Usage examples and sample flows
scripts/                Development, quality, database, and evidence scripts
tests/                  API request examples and project-level test notes
.github/                CI workflows, templates, and repository automation
.env.example            Safe environment variable template
.gitignore              Files excluded from version control
docker-compose.yml      Local multi-service execution
Makefile                Unified development commands
README.md               Project overview and usage guide
```

## Documentation

Initial documentation lives in `docs/`:

- `docs/architecture.md` — system architecture overview;
- `docs/api_contract.md` — planned API contract and endpoint logic;
- `docs/database_schema.md` — database entities and relationships;
- `docs/ui_map.md` — application screen map and user flow;
- `docs/reproducibility.md` — repeatable setup and execution notes;
- `docs/limitations.md` — current limitations and non-claims.

These documents will be expanded during implementation.

## Installation

### Requirements

- Node.js 20 or newer;
- npm;
- Flutter SDK compatible with Dart `>=3.3.0 <4.0.0`;
- Docker and Docker Compose for local PostgreSQL and full local environment.

### Setup

```bash
cp .env.example .env
make install
```

If `make` is not available, use the direct commands:

```bash
cd backend
npm install
cd ../app
flutter pub get
```

## Running the Project

Run backend locally:

```bash
make run-backend
```

Run Flutter app locally:

```bash
make run-app
```

Run the Docker Compose environment:

```bash
make docker-up
```

The API documentation is expected at:

```text
http://localhost:3000/docs
```

## Testing and Quality Checks

Run all available checks:

```bash
make check
```

Run backend tests:

```bash
make test-backend
```

Run Flutter tests:

```bash
make test-app
```

Run repository structure checks:

```bash
make structure-check
```

## Example Use Case

1. A student requests `Camera 01` from 10:00 to 12:00.
2. A lab manager approves the booking.
3. Another user requests `Camera 01` from 11:00 to 13:00.
4. The system detects the overlap and blocks or rejects the second active booking.
5. The decision is recorded for audit and review.

## Evidence and Results

Implementation evidence should be placed in `evidence/`, including:

- screenshots;
- short demo logs;
- test output;
- API examples;
- architecture diagrams;
- before/after notes;
- proof that the booking conflict rule works.

No private data, real student data, passwords, tokens, or confidential university documents should be added.

## Limitations

This repository is experimental and under active development.

Current limitations:

- not production-ready;
- no stable public release yet;
- database migrations and seed flows may change;
- authentication and authorization are not yet complete;
- booking conflict prevention must be proven with automated tests before any stable release;
- no real institutional deployment claim is made;
- no clinical, financial, legal, or safety-critical claims are made.

## Security Rules

This repository must never contain:

- real `.env` files;
- passwords;
- API tokens;
- recovery codes;
- personal documents;
- real student data;
- private screenshots;
- administrative university files.

Only `.env.example` with safe placeholder values is allowed.

If a secret is committed accidentally, rotate or revoke it immediately, remove it from Git history when appropriate, and document the incident privately according to `SECURITY.md`.

## Roadmap

See `ROADMAP.md` for the current development plan.

## Changelog

See `CHANGELOG.md` for repository-level changes.

## Academic Context

This repository supports a manufacturing practice project at Baikal School of BRICS.

The project demonstrates disciplined software engineering practice: requirements analysis, system architecture design, database modelling, backend development, cross-platform application structure, testing, documentation, and reproducible execution.

## License

No open-source license has been selected yet. Until a license is added, all rights are reserved by the author. See `LICENSE`.
