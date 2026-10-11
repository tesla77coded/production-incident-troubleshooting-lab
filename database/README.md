# Database Investigation Lab

This directory contains a small relational dataset for practicing
application-support investigations involving users, orders, and payments.

## Files

- `schema.sql` — creates the users, orders, and payments tables.
- `seed.sql` — inserts sample records.
- `queries.sql` — contains investigation queries for order/payment
  status mismatches, missing payment records, amount discrepancies,
  and order-status summaries.

## Investigation: Order 5002

The sample data shows:

- Order status: `pending`
- Payment status: `success`
- Order amount: 1800
- Payment amount: 1800

This confirms a mismatch between the recorded payment and order states.
The dataset alone does not establish why the order state was not updated.

## Validation

The schema and seed data were validated using Python's built-in
SQLite module. The validation created 4 users, 5 orders, and 5 payments,
then queried order 5002 to confirm the recorded states and amounts.

The SQL files are intended for a learning and portfolio environment,
not a production database.
