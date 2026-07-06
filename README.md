# Cross-Platform University Equipment Booking System

A cross-platform university equipment booking and resource scheduling system for laboratories and educational departments where shared equipment, rooms, and technical resources must be reserved, approved, tracked, and protected from scheduling conflicts.

The central engineering rule of the project is simple: two active bookings for the same equipment item must not overlap in time.

## Project Identity

Project code: CPEB  
Full name: Cross-Platform University Equipment Booking and Resource Scheduling System  
Practice topic: SD-03 — Equipment Booking System  
Status: active educational software engineering project  
Main field: cross-platform application development, backend API design, relational database modelling, and resource scheduling logic

## Problem

University laboratories often manage equipment and room reservations through messages, spreadsheets, paper notes, or informal communication. This makes the process difficult to control and verify.

Common problems include:

- unclear equipment availability;
- double bookings for the same resource;
- missing approval history;
- weak responsibility tracking;
- poor visibility of equipment status;
- no reliable audit trail for booking decisions.

A reliable booking system must therefore manage not only equipment records, but also users, time intervals, booking statuses, approval decisions, and conflict-prevention rules.

## Goal

The goal of this project is to design and implement a functional cross-platform system that allows university users to request shared equipment or rooms while allowing responsible staff members to approve, reject, monitor, and audit reservations.

The project emphasizes clean repository organization, reproducible execution, documented architecture, and verifiable business logic.

## Core Business Rule

For one equipment item or room, two active reservations must not overlap.

Example:

Booking A:
Camera 01 — 10:00 to 12:00 — approved

Booking B:
Camera 01 — 11:00 to 13:00 — requested

Booking B must be rejected or blocked because its time interval overlaps with Booking A.

This rule affects the database model, backend validation logic, API contract, tests, and user workflow.

## Main Scope

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

    app/                    Flutter cross-platform application
    backend/                NestJS backend API
    backend/prisma/         Prisma schema and seed logic
    backend/src/            Backend source code
    backend/test/           Backend tests
    docs/                   Architecture, API, database, and UI documentation
    scripts/                Development, quality, database, and evidence scripts
    tests/                  API request examples
    .env.example            Safe environment variable template
    .gitignore              Files excluded from version control
    docker-compose.yml      Local multi-service execution
    README.md               Project overview and usage guide

## Documentation

The docs directory contains the initial technical documentation:

- docs/architecture.md — system architecture overview;
- docs/api_contract.md — planned API contract and endpoint logic;
- docs/database_schema.md — database entities and relationships;
- docs/ui_map.md — application screen map and user flow.

These documents will be expanded during implementation.

## Local Run Plan

Backend:

    cd backend
    npm install
    npm run start:dev

Flutter application:

    cd app
    flutter pub get
    flutter run

Docker Compose:

    docker compose up --build

## Testing Plan

Backend tests are expected to verify:

- booking creation;
- invalid booking intervals;
- overlapping reservation rejection;
- booking status transitions;
- API validation behaviour.

Run backend tests:

    cd backend
    npm test

Run Flutter tests:

    cd app
    flutter test

## Security Rules

This repository must never contain:

- real .env files;
- passwords;
- API tokens;
- recovery codes;
- personal documents;
- real student data;
- private screenshots;
- administrative university files.

Only .env.example with safe placeholder values is allowed.

## Current Status

The repository currently contains the initial technical foundation of the CPEB project: repository structure, documentation drafts, backend skeleton, Flutter application skeleton, database schema draft, Docker Compose configuration, scripts, and basic test foundation.

The project is under active development during the manufacturing practice period. The next engineering priority is to complete and verify the booking workflow, especially the rule that two active reservations for the same equipment item must not overlap.

## Roadmap

1. Finalize the database schema for users, equipment, bookings, and statuses.
2. Implement backend modules for equipment and booking management.
3. Add conflict-prevention validation for overlapping reservations.
4. Prepare seed data for demo equipment and users.
5. Connect the Flutter interface to backend endpoints.
6. Add automated tests for the booking workflow.
7. Document API behaviour with Swagger/OpenAPI.
8. Prepare execution evidence and final project report materials.

## Academic Context

This repository supports a manufacturing practice project at Baikal School of BRICS.

The project is educational and demonstrates disciplined software engineering practice: requirements analysis, system architecture design, database modelling, backend development, cross-platform application structure, testing, documentation, and reproducible execution.

## License

No open-source license has been selected yet. Until a license is added, all rights are reserved by the author.
