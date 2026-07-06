# Architecture

Flutter app -> NestJS API -> PostgreSQL database.

Main backend modules:
- Auth
- Users
- Equipment
- Bookings
- Maintenance
- Audit
- Reports

Main invariant:
For one equipment item, no two active bookings may overlap.
