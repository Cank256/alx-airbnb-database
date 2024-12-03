-- Create index on User table for high-usage columns
CREATE INDEX idx_user_id ON users(id);
CREATE INDEX idx_user_email ON users(email);

-- Create index on Booking table for high-usage columns
CREATE INDEX idx_booking_user_id ON bookings(user_id);
CREATE INDEX idx_booking_property_id ON bookings(property_id);
CREATE INDEX idx_booking_start_date ON bookings(start_date);

-- Create index on Property table for high-usage columns
CREATE INDEX idx_property_id ON properties(id);
CREATE INDEX idx_property_name ON properties(name);

-- Create index on Review table for high-usage columns
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date >= '2024-12-01';