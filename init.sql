-- SQL-1-AFTERNOON PROJECT


-- TABLE - PERSON
-- 1
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    age INT,
    height INT,
    city VARCHAR(60),
    favorite_color VARCHAR(32)
);
-- 2
INSERT INTO person (name, age, height, city, favorite_color) VALUES 
('George', 23, 187, 'Brookshire', 'green'),
('Jim', 43, 203, 'Paris', 'blue'),
('Gale', 12, 123, 'Fort Worth', 'red'),
('Sarah', 18, 112, 'Dallas', 'purple'),
('Kelly', 33, 308, 'Hemp', 'teal');
-- 3
SELECT * FROM person ORDER BY height DESC;
-- 4
SELECT * FROM person ORDER BY height ASC;
-- 5
SELECT * FROM person ORDER BY age DESC;
-- 6
SELECT * FROM person WHERE age > 20;
-- 7
SELECT * FROM person WHERE age = 23;
-- 8
SELECT * FROM person WHERE age < 20 OR age > 30;
-- 9
SELECT * FROM person WHERE age != 27;
-- 10
SELECT * FROM person WHERE favorite_color != 'red';
-- 11
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';
-- 12
SELECT * FROM person WHERE favorite_color = 'orange' AND favorite_color != 'green';
-- 13
SELECT * FROM person WHERE favorite_color IN ('orange', 'green', 'blue');
-- 14
SELECT * FROM person WHERE favorite_color IN ('yellow', 'purple');


-- TABLE - ORDERS
-- 1
CREATE TABLE orders (
    order_id INT,
    person_id INT,
    product_name VARCHAR(60),
    product_price FLOAT(2),
    quantity INT
);
-- 2
INSERT INTO orders (order_id, person_id, product_name, product_price, quantity) VALUES
(1, 1, 'grill cheese', 12.54, 3 ),
(2, 2, 'lobster', 205.45, 12 ),
(3, 1, 'steak', 56.50, 10 ),
(4, 1, 'gum ball', 1.45, 100 ),
(5, 3, 'super duper plate', 20005.45, 1 );
-- 3
SELECT * FROM orders;
-- 4
SELECT SUM(quantity) FROM orders;
-- 5
SELECT SUM(product_price * quantity) FROM orders;
-- 6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;


-- TABLE - ARTISTS
-- 1
INSERT INTO artist (artist_id, name) VALUES 
(276, 'Trajically Hip'),
(277, 'SAINt JHN'),
(278, 'SLH');
-- 2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
-- 3
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
-- 4
SELECT * FROM artist WHERE name LIKE 'Black%';
-- 5
SELECT * FROM artist WHERE name LIKE '%Black%';


-- TABLE - EMPLOYEE
-- 1
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';
-- 2
SELECT MIN(birth_date) FROM employee;
-- 3
SELECT MAX(birth_date) FROM employee;
-- 4
SELECT * FROM employee WHERE reports_to = 2;
-- 5
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


-- TABLE - INVOICE
-- 1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
-- 2
SELECT MAX(total) FROM invoice;
-- 3
SELECT MIN(total) FROM invoice;
-- 4
SELECT * FROM invoice WHERE total > 5;
-- 5
SELECT COUNT(*) FROM invoice WHERE total < 5;
-- 6
SELECT COUNT(*) FROM invoice WHERE billing_state IN (CA, TX, AZ);
-- 7
SELECT AVG(total) FROM invoice;
-- 8
SELECT SUM(total) FROM invoice;