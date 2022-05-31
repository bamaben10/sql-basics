-- #1
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name VARCHAR(20) NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INTEGER NOT NULL
);

-- #2
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(1, 'baseball', 5, 10),
(1, 'bat', 49.95, 1),
(1, 'helmet', 19.50, 2),
(2, 'monitor', 100, 3),
(2, 'mouse', 58.75, 1);

-- #3
SELECT * FROM orders;

-- #4
SELECT SUM(quantity) FROM orders;

-- #5
SELECT SUM(product_price * quantity) FROM orders;

-- #6
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;

SELECT person_id, SUM(product_price * quantity) FROM orders GROUP BY person_id;
