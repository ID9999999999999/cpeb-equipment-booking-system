# Cross-Platform University Equipment Booking System

A cross-platform university equipment and room booking system with conflict prevention, roles, maintenance tracking, audit logs, API documentation, tests, and Docker-based run instructions.

## Problem

Manual equipment booking can cause double bookings, missing history, unclear responsibility, and poor visibility of equipment status.

## Core Demo Scenario

A student requests Camera 01 from 10:00 to 12:00. Another student tries to request the same camera from 11:00 to 13:00. The system rejects the second request because it overlaps. A lab manager approves the valid request and the audit log records the action.

## Stack

- App: Flutter
- Backend: NestJS
- Database: PostgreSQL
- ORM: Prisma
- API Docs: Swagger / OpenAPI
- Testing: Jest + Flutter tests
- Run: Docker Compose

## Status

Workspace skeleton prepared. Implementation must be completed during the one-week sprint.

## Run Plan

Backend:
```bash
cd backend
npm install
npm run start:dev
```

Flutter:
```bash
cd app
flutter pub get
flutter run
```

Docker:
```bash
docker compose up --build
```

## Security

Never commit `.env`, tokens, real passwords, private documents, or real student data.
