# Database Schema Notes

Core tables:
- users
- equipment
- bookings
- maintenance_records
- audit_logs

Critical rule:
A new booking conflicts with an existing booking when:

new_start < existing_end AND new_end > existing_start
