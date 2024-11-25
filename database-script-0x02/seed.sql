-- seed.sql

-- Insert sample data into User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Smith', 'alice.smith@example.com', 'hashed_password_1', '123-456-7890', 'guest', '2024-01-01 10:00:00'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Johnson', 'bob.johnson@example.com', 'hashed_password_2', '234-567-8901', 'host', '2024-01-02 11:00:00'),
('33333333-3333-3333-3333-333333333333', 'Carol', 'Williams', 'carol.williams@example.com', 'hashed_password_3', NULL, 'admin', '2024-01-03 12:00:00'),
('44444444-4444-4444-4444-444444444444', 'David', 'Brown', 'david.brown@example.com', 'hashed_password_4', '345-678-9012', 'guest', '2024-01-04 13:00:00'),
('55555555-5555-5555-5555-555555555555', 'Eve', 'Davis', 'eve.davis@example.com', 'hashed_password_5', '456-789-0123', 'host', '2024-01-05 14:00:00');

-- Insert sample data into Property table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Cottage', 'A cozy cottage in the countryside.', 'Springfield, IL', 120.00, '2024-02-01 09:00:00', '2024-02-10 10:00:00'),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', 'Modern Apartment', 'A modern apartment in the city center.', 'Chicago, IL', 200.00, '2024-02-02 10:00:00', '2024-02-11 11:00:00'),
('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Beach House', 'A beautiful beach house with sea views.', 'Miami, FL', 350.00, '2024-02-03 11:00:00', '2024-02-12 12:00:00'),
('aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '55555555-5555-5555-5555-555555555555', 'Mountain Cabin', 'A serene cabin in the mountains.', 'Denver, CO', 180.00, '2024-02-04 12:00:00', '2024-02-13 13:00:00'),
('aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Urban Loft', 'A stylish loft in the urban area.', 'New York, NY', 250.00, '2024-02-05 13:00:00', '2024-02-14 14:00:00');

-- Insert sample data into Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2024-03-01', '2024-03-05', 480.00, 'confirmed', '2024-02-15 08:00:00'),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '44444444-4444-4444-4444-444444444444', '2024-04-10', '2024-04-12', 400.00, 'pending', '2024-03-20 09:30:00'),
('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2024-05-15', '2024-05-20', 1750.00, 'confirmed', '2024-04-25 10:45:00'),
('bbbbbbb4-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '44444444-4444-4444-4444-444444444444', '2024-06-05', '2024-06-10', 900.00, 'canceled', '2024-05-10 11:15:00'),
('bbbbbbb5-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2024-07-20', '2024-07-25', 1250.00, 'confirmed', '2024-06-18 12:30:00');

-- Insert sample data into Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('ccccccc1-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 480.00, '2024-02-16 14:00:00', 'credit_card'),
('ccccccc2-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 400.00, '2024-03-21 15:30:00', 'paypal'),
('ccccccc3-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1750.00, '2024-04-26 16:45:00', 'stripe'),
('ccccccc4-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb4-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 900.00, '2024-05-11 17:15:00', 'credit_card'),
('ccccccc5-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb5-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1250.00, '2024-06-19 18:30:00', 'paypal');

-- Insert sample data into Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('ddddddd1-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Wonderful stay! The cottage was cozy and clean.', '2024-03-06 19:00:00'),
('ddddddd2-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '44444444-4444-4444-4444-444444444444', 4, 'Great location and modern amenities.', '2024-04-13 20:30:00'),
('ddddddd3-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing views and excellent service.', '2024-05-21 21:45:00'),
('ddddddd4-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '44444444-4444-4444-4444-444444444444', 3, 'Quiet location but some maintenance issues.', '2024-06-11 22:15:00'),
('ddddddd5-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa5-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'Stylish and comfortable, enjoyed the urban setting.', '2024-07-26 23:30:00');

-- Insert sample data into Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, I have a question about the Cozy Cottage availability.', '2024-02-14 09:00:00'),
('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hello Alice, the Cozy Cottage is available for your selected dates.', '2024-02-14 09:15:00'),
('eeeeeee3-eeee-eeee-eeee-eeeeeeeeeeee', '44444444-4444-4444-4444-444444444444', '55555555-5555-5555-5555-555555555555', 'Hi Eve, can you provide more details about the Modern Apartment?', '2024-02-20 10:30:00'),
('eeeeeee4-eeee-eeee-eeee-eeeeeeeeeeee', '55555555-5555-5555-5555-555555555555', '44444444-4444-4444-4444-444444444444', 'Sure David, the Modern Apartment includes all utilities and free Wi-Fi.', '2024-02-20 10:45:00'),
('eeeeeee5-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '33333333-3333-3333-3333-333333333333', 'Hello Admin, I need assistance with my recent booking.', '2024-03-05 11:00:00');
