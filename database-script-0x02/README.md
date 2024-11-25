# AirBnB Database Seed Script

This repository contains the SQL script required to populate the AirBnB-like application database with sample data. The `seed.sql` file includes `INSERT` statements for all tables, providing a realistic dataset for testing and development purposes.

## Files

### `seed.sql`

This file contains SQL `INSERT` statements to add sample data into the following tables:

- **User**: Adds sample users with different roles (`guest`, `host`, `admin`).
- **Property**: Adds property listings associated with hosts.
- **Booking**: Adds bookings made by guests for properties.
- **Payment**: Adds payments corresponding to bookings.
- **Review**: Adds reviews left by guests for properties.
- **Message**: Adds messages exchanged between users.

## Table Descriptions and Sample Data

### 1. User

- **Purpose**: Stores user information.
- **Sample Data**:
  - **Guests**: Alice Smith and David Brown.
  - **Hosts**: Bob Johnson and Eve Davis.
  - **Admin**: Carol Williams.

### 2. Property

- **Purpose**: Stores property listings hosted by users.
- **Sample Data**:
  - **Cozy Cottage**: Hosted by Bob Johnson in Springfield, IL.
  - **Modern Apartment**: Hosted by Eve Davis in Chicago, IL.
  - **Beach House**: Hosted by Bob Johnson in Miami, FL.
  - **Mountain Cabin**: Hosted by Eve Davis in Denver, CO.
  - **Urban Loft**: Hosted by Bob Johnson in New York, NY.

### 3. Booking

- **Purpose**: Records bookings made by users for properties.
- **Sample Data**:
  - Alice Smith booked Cozy Cottage for 4 nights.
  - David Brown booked Modern Apartment for 2 nights.
  - Alice Smith booked Beach House for 5 nights.
  - David Brown booked Mountain Cabin but later canceled.
  - Alice Smith booked Urban Loft for 5 nights.

### 4. Payment

- **Purpose**: Tracks payments associated with bookings.
- **Sample Data**:
  - Payments corresponding to each booking, using different payment methods (`credit_card`, `paypal`, `stripe`).

### 5. Review

- **Purpose**: Contains reviews left by users for properties.
- **Sample Data**:
  - Reviews by Alice Smith and David Brown for various properties, with ratings between 3 and 5.

### 6. Message

- **Purpose**: Manages messages exchanged between users.
- **Sample Data**:
  - Conversations between guests and hosts regarding property availability and details.
  - A message from Alice Smith to Admin Carol Williams seeking assistance.

## Indexing and Constraints

- **Foreign Keys**: Ensures referential integrity between tables.
- **Unique Constraints**: Ensures unique fields like `email` in the User table.
- **Not Null Constraints**: Enforces required fields.
- **Enum Constraints**: Restricts fields to predefined values.
- **Check Constraints**: Validates data ranges, e.g., `rating` between 1 and 5.

## Usage

To populate your database with the sample data, follow these steps:

1. **Clone the Repository**

   ```bash
   git clone https://github.com/alx-airbnb-database.git
   cd alx-airbnb-database/database-script-0x02

2. **Ensure Schema is Created**

    Before running the seed script, ensure that the database schema is set up by executing the schema.sql script from `../database-script-0x01`

3. **Import the Seed Data**

    ```
    mysql -u your_username -p your_database < seed.sql

4. **Verify the Data**

    After importing, verify that the data has been inserted correctly by querying the tables. For example:

    ```
    SELECT * FROM User;
    SELECT * FROM Property;
    SELECT * FROM Booking;
    SELECT * FROM Payment;
    SELECT * FROM Review;
    SELECT * FROM Message;

## Additional Recommendations

    - Data Consistency: Ensure that UUIDs used in seed.sql match those in the schema.sql to maintain referential integrity.
    - Scalability: Adjust the number of sample records based on testing needs. More data can help in performance testing and simulating real-world scenarios.
    - Security: Use hashed passwords for user accounts. The sample data uses placeholder hashes (hashed_password_X), which should be replaced with actual hashed values in a production environment.
    - Backup: Regularly back up your seed data and database to prevent data loss during development and testing.
