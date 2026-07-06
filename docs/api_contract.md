# API Contract Draft

## Auth
- POST /auth/login
- GET /auth/me

## Equipment
- GET /equipment
- POST /equipment
- PATCH /equipment/:id

## Bookings
- POST /bookings
- GET /bookings
- PATCH /bookings/:id/approve
- PATCH /bookings/:id/reject
- PATCH /bookings/:id/cancel

## Maintenance
- POST /maintenance
- PATCH /maintenance/:id/resolve

## Audit
- GET /audit-logs
