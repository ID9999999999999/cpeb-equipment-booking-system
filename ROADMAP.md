# Roadmap

This roadmap reflects the current experimental state of the CPEB Equipment Booking System.

## Phase 0 — Repository Foundation

- [x] Clear project identity
- [x] README with problem, solution, scope, setup, and limitations
- [x] `.gitignore`
- [x] `.env.example`
- [x] Docker Compose foundation
- [x] Unified Makefile commands
- [x] Initial documentation folder
- [x] GitHub issue and PR templates
- [x] Initial CI workflow
- [x] Dependabot configuration
- [x] Security and contribution policies

## Phase 1 — Backend Foundation

- [ ] Finalize Prisma schema for users, equipment, bookings, and statuses
- [ ] Add database migrations
- [ ] Add seed data for demo equipment and demo users
- [ ] Implement equipment module
- [ ] Implement booking module
- [ ] Implement booking status transitions
- [ ] Add API validation
- [ ] Add Swagger/OpenAPI documentation

## Phase 2 — Booking Conflict Rule

- [ ] Define active booking statuses
- [ ] Implement non-overlap validation
- [ ] Add unit tests for interval overlap cases
- [ ] Add integration tests for booking creation
- [ ] Add evidence showing blocked overlapping reservations

## Phase 3 — Flutter Application

- [ ] Add equipment list screen
- [ ] Add booking request screen
- [ ] Add booking status screen
- [ ] Connect app to backend API
- [ ] Add basic Flutter widget tests

## Phase 4 — Evidence and Release Preparation

- [ ] Add screenshots
- [ ] Add short demo video or GIF if possible
- [ ] Add test output logs
- [ ] Add architecture diagram
- [ ] Add known limitations to release notes
- [ ] Create first tested pre-release tag only after CI is green
