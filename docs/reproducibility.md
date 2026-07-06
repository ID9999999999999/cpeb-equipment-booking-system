# Reproducibility Guide

This document explains how to reproduce the current local development setup.

## Project Status

CPEB is experimental and under active development. Commands may change before the first stable release.

## Required Tools

- Git
- Make
- Node.js 20 or newer
- npm
- Flutter SDK compatible with Dart `>=3.3.0 <4.0.0`
- Docker
- Docker Compose

## Fresh Setup

```bash
git clone https://github.com/ID9999999999999/cpeb-equipment-booking-system.git
cd cpeb-equipment-booking-system
cp .env.example .env
make install
```

## Run Backend

```bash
make run-backend
```

Expected API documentation path:

```text
http://localhost:3000/docs
```

## Run Flutter App

```bash
make run-app
```

## Run Docker Environment

```bash
make docker-up
```

Stop Docker services:

```bash
make docker-down
```

## Run Checks

```bash
make check
```

This runs:

- repository structure check;
- backend lint;
- Flutter analyze;
- backend format check;
- Flutter format check;
- backend tests;
- Flutter tests.

## Reproducibility Notes

- Use `.env.example` only as a template.
- Do not commit `.env`.
- Do not use real student data.
- Use seed/demo data only.
- Record test output or screenshots in `evidence/` when preparing project proof.
