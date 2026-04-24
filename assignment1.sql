
--  Customer Inquiry Tracker - SQL Assignment


--  Create Database
CREATE DATABASE support_db;

-- Use the database
USE support_db;

--  Create Table
CREATE TABLE inquiries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(150),
    issue_type VARCHAR(100),
    message TEXT,
    status VARCHAR(20) DEFAULT 'Open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--  Insert Sample Records
INSERT INTO inquiries (customer_name, email, issue_type, message, status)
VALUES
('Rahul Sharma', 'rahul@gmail.com', 'Order Delay', 'My order is delayed by 5 days', 'Open'),
('Priya Reddy', 'priya@yahoo.com', 'Payment Issue', 'Payment deducted but order not confirmed', 'Open'),
('Amit Kumar', 'amit@gmail.com', 'Refund Request', 'I want a refund for my cancelled order', 'Open'),
('Sneha Gupta', 'sneha@gmail.com', 'Product Return', 'Received damaged product, need return', 'Open'),
('Vikas Singh', 'vikas@hotmail.com', 'Refund Request', 'Refund not processed yet', 'Open');

-- Insert an old record (for DELETE test)
INSERT INTO inquiries (customer_name, email, issue_type, message, status, created_at)
VALUES
('Spam User', 'spam@gmail.com', 'Spam', 'This is spam message', 'Spam', '2023-01-01');

--  SELECT Queries

-- Retrieve all open inquiries ordered by newest first
SELECT * 
FROM inquiries
WHERE status = 'Open'
ORDER BY created_at DESC;

-- Find inquiries containing the word "refund"
SELECT *
FROM inquiries
WHERE LOWER(message) LIKE '%refund%';

-- List inquiries from Gmail users
SELECT *
FROM inquiries
WHERE email LIKE '%@gmail.com';

--  UPDATE Operations

-- Change one inquiry status to 'Resolved'
UPDATE inquiries
SET status = 'Resolved'
WHERE id = 1;

-- Change another inquiry status to 'In Progress'
UPDATE inquiries
SET status = 'In Progress'
WHERE id = 2;

--  DELETE Operations

-- Delete inquiries marked as 'Spam'
DELETE FROM inquiries
WHERE status = 'Spam';

-- Delete inquiries older than 30 days
DELETE FROM inquiries
WHERE created_at < NOW() - INTERVAL 30 DAY;

--  GROUP BY Query

-- Count inquiries per issue type
SELECT issue_type, COUNT(*) AS total_inquiries
FROM inquiries
GROUP BY issue_type
ORDER BY total_inquiries DESC;


-- END OF SCRIPT