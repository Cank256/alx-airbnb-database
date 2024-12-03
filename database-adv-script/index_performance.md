## Objective: Add indexes to improve query performance.

### Step 1: Identify high-usage columns

- For users: id, email
- For bookings: user_id, property_id, start_date
- For properties: id, location

### Step 2: Create Indexes

``
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_location ON properties(location);

### Step 3: Measure performance with EXPLAIN/ANALYZE

``
EXPLAIN SELECT * FROM bookings WHERE user_id = 5;


