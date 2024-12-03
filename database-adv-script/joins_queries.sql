--Using the Inner JOIN clause

SELECT 
    bookings.id AS booking_id,
    bookings.property_id,
    users.id AS user_id,
    users.name AS user_name
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.id;

--Using the LEFT JOIN clause
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.comment AS review_comment
FROM 
    properties
LEFT JOIN 
    reviews ON properties.id = reviews.property_id;
ORDER BY 
    properties.name ASC;

--Using the FULL OUTER JOIN clause
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    bookings.id AS booking_id,
    bookings.property_id
FROM 
    users
FULL OUTER JOIN 
    bookings ON users.id = bookings.user_id;
ORDER BY 
    reviews.id DESC;
