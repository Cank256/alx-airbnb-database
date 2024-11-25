# AirBnB Database Schema

This repository contains the SQL scripts required to set up the database schema for the AirBnB clone application. The schema defines the structure of the database, including tables, columns, data types, constraints, and indexes.

## Files

### `schema.sql`

This file contains the SQL `CREATE TABLE` statements to define the database schema based on the provided specifications. It includes the following tables:

- **User**: Stores user information.
- **Property**: Stores property listings hosted by users.
- **Booking**: Records bookings made by users for properties.
- **Payment**: Tracks payments associated with bookings.
- **Review**: Contains reviews left by users for properties.
- **Message**: Manages messages exchanged between users.

## Table Descriptions

### User

- **user_id**: Primary key, UUID.
- **first_name**: User's first name.
- **last_name**: User's last name.
- **email**: User's email address, unique.
- **password_hash**: Hashed password.
- **phone_number**: Contact number.
- **role**: User role (`guest`, `host`, `admin`).
- **created_at**: Timestamp of account creation.

### Property

- **property_id**: Primary key, UUID.
- **host_id**: Foreign key referencing `User(user_id)`.
- **name**: Property name.
- **description**: Detailed description of the property.
- **location**: Property location.
- **pricepernight**: Cost per night.
- **created_at**: Timestamp of listing creation.
- **updated_at**: Timestamp of last update.

### Booking

- **booking_id**: Primary key, UUID.
- **property_id**: Foreign key referencing `Property(property_id)`.
- **user_id**: Foreign key referencing `User(user_id)`.
- **start_date**: Booking start date.
- **end_date**: Booking end date.
- **total_price**: Total cost of the booking.
- **status**: Booking status (`pending`, `confirmed`, `canceled`).
- **created_at**: Timestamp of booking creation.

### Payment

- **payment_id**: Primary key, UUID.
- **booking_id**: Foreign key referencing `Booking(booking_id)`.
- **amount**: Payment amount.
- **payment_date**: Timestamp of payment.
- **payment_method**: Payment method (`credit_card`, `paypal`, `stripe`).

### Review

- **review_id**: Primary key, UUID.
- **property_id**: Foreign key referencing `Property(property_id)`.
- **user_id**: Foreign key referencing `User(user_id)`.
- **rating**: Rating between 1 and 5.
- **comment**: Review comment.
- **created_at**: Timestamp of review creation.

### Message

- **message_id**: Primary key, UUID.
- **sender_id**: Foreign key referencing `User(user_id)`.
- **recipient_id**: Foreign key referencing `User(user_id)`.
- **message_body**: Content of the message.
- **sent_at**: Timestamp of when the message was sent.

## Indexing

To optimize query performance, the following indexes are created:

- **User Table**: Index on `email`.
- **Property Table**: Index on `host_id`.
- **Booking Table**: Indexes on `property_id` and `user_id`.
- **Payment Table**: Index on `booking_id`.
- **Review Table**: Indexes on `property_id` and `user_id`.
- **Message Table**: Indexes on `sender_id` and `recipient_id`.

## Constraints

Each table includes appropriate constraints to ensure data integrity:

- **Primary Keys**: Unique identifiers for each table.
- **Foreign Keys**: Establish relationships between tables.
- **Unique Constraints**: Ensuring unique fields like `email`.
- **Not Null Constraints**: Required fields are enforced.
- **Enum Constraints**: Restricting fields to predefined values.
- **Check Constraints**: Validating data ranges, e.g., `rating` between 1 and 5.

## Usage

To set up the database schema:

1. **Clone the Repository**

   ```bash
   git clone https://github.com/alx-airbnb-database.git
   cd alx-airbnb-database/database-script-0x01

2. **Import the Schema**

    ```
    mysql -u your_username -p your_database < schema.sql

## Notes

- UUID Handling: Ensure that your database supports UUIDs. In MySQL, UUIDs are stored as CHAR(36).
- ENUM Types: MySQL supports ENUM types natively. If using a different DBMS, adjust the ENUM implementation accordingly.
- Data Types: Adjust VARCHAR lengths and DECIMAL precision based on specific requirements and expected data sizes.
- Foreign Keys: Ensure that referenced tables are created before the tables that reference them to maintain referential integrity.
