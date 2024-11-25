# Entity-Relationship Diagram (ERD)

## Overview

This ERD represents the database schema for the AirBnB-like application. It outlines the entities, their attributes, and the relationships between them.

## Entities

- **User**
- **Property**
- **Booking**
- **Payment**
- **Review**
- **Message**

## Relationships

- A **User** can host multiple **Properties**.
- A **User** can make multiple **Bookings**.
- A **Property** can have multiple **Bookings** and **Reviews**.
- Each **Booking** has one associated **Payment**.
- **Users** can send and receive multiple **Messages**.
- **Users** can write multiple **Reviews** for **Properties**.

## Diagram

![ER Diagram](./AirBnB_db_ER%20Diagram.png)

## Notes

- Primary keys are underlined.
- Foreign keys are indicated with (FK) next to the attribute name.
- ENUM types are used for fields like `role`, `status`, and `payment_method`.
- Constraints such as `NOT NULL` and `UNIQUE` are enforced as per the specifications.
