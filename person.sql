-- #1
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INTEGER NOT NULL,
    height INTEGER NOT NULL,
    city VARCHAR(40),
    favorite_color VARCHAR(40)
);

-- #2
INSERT INTO person (name, age, height, city, favorite_color)
VALUES('Ben Salmon', 25, 196, 'Panama City Beach', 'Blue'),
('Thai Tran', 28, 165, 'Dallas', 'Black'),
('John Doe', 30, 170, 'Chicago', 'Red'),
('Jane Doe', 27, 160, 'New York City', 'Orange'),
('Shrek', 35, 200, 'Swamp', 'Green');

-- #3
SELECT * FROM person
ORDER BY height DESC;

-- #4
SELECT * FROM person
ORDER BY height;

-- #5
SELECT * FROM person
ORDER BY age DESC;

-- #6
SELECT * FROM person
WHERE age > 20;

-- #7
SELECT * FROM person
WHERE age = 18;

-- #8
SELECT * FROM person
WHERE age < 20 OR age > 30;

-- #9
SELECT * FROM person
WHERE age != 27;

-- #10
SELECT * FROM person
WHERE favorite_color <> 'Red';

-- #11
SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

-- #12
SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

-- #13
SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- #14
SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');


