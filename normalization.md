# Database Normalization Report

## Introduction

Normalization is a systematic approach of decomposing tables to eliminate data redundancy and undesirable characteristics like insertion, update, and deletion anomalies. The goal is to organize the data efficiently, ensuring data integrity and optimal performance. This report reviews the provided AirBnB database schema and applies normalization principles to achieve the Third Normal Form (3NF).

## Normalization Process

### First Normal Form (1NF)

**Criteria for 1NF:**
- Eliminate duplicate columns from the same table.
- Create separate tables for each group of related data.
- Identify each row with a unique primary key.

**Analysis:**
- Each table in the provided schema has a primary key (`user_id`, `property_id`, `booking_id`, etc.), ensuring uniqueness.
- All attributes contain atomic (indivisible) values.
- There are no repeating groups or arrays within any table.

**Conclusion:** The schema satisfies **1NF**.

### Second Normal Form (2NF)

**Criteria for 2NF:**
- Meet all the requirements of 1NF.
- Remove subsets of data that apply to multiple rows of a table and place them in separate tables.
- Ensure that all non-key attributes are fully functionally dependent on the primary key.

**Analysis:**
- **User Table:** All non-key attributes (`first_name`, `last_name`, `email`, etc.) depend solely on `user_id`.
- **Property Table:** All non-key attributes (`name`, `description`, `location`, etc.) depend solely on `property_id`.
- **Booking Table:** All non-key attributes (`property_id`, `user_id`, `start_date`, etc.) depend solely on `booking_id`.
- **Payment Table:** All non-key attributes (`booking_id`, `amount`, etc.) depend solely on `payment_id`.
- **Review Table:** All non-key attributes (`property_id`, `user_id`, `rating`, etc.) depend solely on `review_id`.
- **Message Table:** All non-key attributes (`sender_id`, `recipient_id`, `message_body`, etc.) depend solely on `message_id`.

There are no partial dependencies in any table since each non-key attribute is fully dependent on the entire primary key.

**Conclusion:** The schema satisfies **2NF**.

### Third Normal Form (3NF)

**Criteria for 3NF:**
- Meet all the requirements of 2NF.
- Remove columns that are not dependent upon the primary key (i.e., eliminate transitive dependencies).

**Analysis:**
- **User Table:** No transitive dependencies. All attributes are directly dependent on `user_id`.
  
- **Property Table:**
  - `host_id` is a foreign key referencing `User(user_id)`. There are no attributes in `Property` that depend on `host_id` other than the relationship itself.
  
- **Booking Table:**
  - `property_id` and `user_id` are foreign keys referencing `Property(property_id)` and `User(user_id)` respectively. There are no transitive dependencies as all attributes depend directly on `booking_id`.
  
- **Payment Table:**
  - `booking_id` is a foreign key referencing `Booking(booking_id)`. All other attributes depend directly on `payment_id`.
  
- **Review Table:**
  - `property_id` and `user_id` are foreign keys referencing `Property(property_id)` and `User(user_id)` respectively. No transitive dependencies exist.
  
- **Message Table:**
  - `sender_id` and `recipient_id` are foreign keys referencing `User(user_id)`. All other attributes depend directly on `message_id`.

No table contains non-key attributes that depend on other non-key attributes, eliminating transitive dependencies.

**Conclusion:** The schema satisfies **3NF**.

## Detailed Table Analysis

### 1. User Table

- **Primary Key:** `user_id`
- **Attributes:** `first_name`, `last_name`, `email`, `password_hash`, `phone_number`, `role`, `created_at`
  
**Dependencies:**
- All attributes are directly dependent on `user_id`.
  
**Normalization Status:** Meets 3NF.

### 2. Property Table

- **Primary Key:** `property_id`
- **Attributes:** `host_id`, `name`, `description`, `location`, `pricepernight`, `created_at`, `updated_at`
  
**Dependencies:**
- All attributes are directly dependent on `property_id`.
- `host_id` establishes a relationship with the `User` table.
  
**Normalization Status:** Meets 3NF.

### 3. Booking Table

- **Primary Key:** `booking_id`
- **Attributes:** `property_id`, `user_id`, `start_date`, `end_date`, `total_price`, `status`, `created_at`
  
**Dependencies:**
- All attributes are directly dependent on `booking_id`.
- `property_id` and `user_id` establish relationships with `Property` and `User` tables respectively.
  
**Normalization Status:** Meets 3NF.

### 4. Payment Table

- **Primary Key:** `payment_id`
- **Attributes:** `booking_id`, `amount`, `payment_date`, `payment_method`
  
**Dependencies:**
- All attributes are directly dependent on `payment_id`.
- `booking_id` establishes a relationship with the `Booking` table.
  
**Normalization Status:** Meets 3NF.

### 5. Review Table

- **Primary Key:** `review_id`
- **Attributes:** `property_id`, `user_id`, `rating`, `comment`, `created_at`
  
**Dependencies:**
- All attributes are directly dependent on `review_id`.
- `property_id` and `user_id` establish relationships with `Property` and `User` tables respectively.
  
**Normalization Status:** Meets 3NF.

### 6. Message Table

- **Primary Key:** `message_id`
- **Attributes:** `sender_id`, `recipient_id`, `message_body`, `sent_at`
  
**Dependencies:**
- All attributes are directly dependent on `message_id`.
- `sender_id` and `recipient_id` establish relationships with the `User` table.
  
**Normalization Status:** Meets 3NF.

## Conclusion

After a thorough analysis, the provided AirBnB database schema adheres to the Third Normal Form (3NF). Each table has a well-defined primary key, and all non-key attributes are fully functionally dependent on their respective primary keys without any transitive dependencies. This design ensures data integrity, minimizes redundancy, and optimizes the database for efficient operations.

## Recommendations

- **Indexing:** Ensure that all foreign keys and frequently queried fields are properly indexed to enhance query performance.
  
- **Data Types:** Regularly review data types to accommodate future scalability, such as increasing the length of `VARCHAR` fields if needed.
  
- **Constraints:** Maintain and enforce all specified constraints (e.g., `NOT NULL`, `UNIQUE`, `CHECK`) to preserve data consistency and integrity.

- **Documentation:** Keep this normalization report updated with any future schema changes to maintain clarity and facilitate ongoing maintenance.
