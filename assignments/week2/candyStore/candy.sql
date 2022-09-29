CREATE TABLE inventory(
	inventory_id serial PRIMARY KEY, 
	fullName varchar(255),
	price float,
	description varchar(255),
	quantity int
);

INSERT INTO inventory(inventory_id,fullName, price, description, quantity)
VALUES
	(1001, 'Hershey Bar', 3.45, 'A small chocolate bar', 50),
	(1002,'Skittles', 3.05, 'A bag of rainbow colored candies', 100),
	(2003, 'Gummy Bears',5.55 , 'A large bag of chewy fruit-flavored bears',48 ),
	(2005, 'Sour Gummy Worms',9.55 , 'A very large bag of gelatin worms',20 ),
	(3008, 'Lollipop',2.25, 'A hard candy atop a stick',268 ),
	(9007, 'M&Ms', 1.95, 'A bag of small chocolate candies', 58);
	
SELECT * 
FROM inventory;

UPDATE inventory 
SET quantity = 48
WHERE fullName = 'Hershey Bar';

SELECT description 
FROM inventory;

SELECT fullName, price
FROM inventory;

UPDATE inventory 
SET description = 'A very large, delicious bag of worms.'
WHERE fullName = 'Sour Gummy Worms';

UPDATE inventory 
SET quantity = 100
WHERE fullName = 'M&Ms';

UPDATE inventory
SET price = 2.5
WHERE fullName = 'Lollipop';

CREATE TABLE employees(
	employee_id serial PRIMARY KEY,
	fullName varchar(255),
	favorite_candy int REFERENCES inventory
);

INSERT INTO employees(employee_id, fullName, favorite_candy)
VALUES 
	(4001, 'Willy Wonka', 2005),
	(4002, 'Milton Hershey', 1001),
	(4003, 'Franklin Mars', 9007),
	(4004, 'John Cadbury', NULL)
	
DROP TABLE IF EXISTS inventory CASCADE;
DROP TABLE IF EXISTS employees CASCADE;

SELECT e.fullName, i.fullName, favorite_candy
FROM employees e
JOIN inventory i ON i.inventory_id =  e.favorite_candy;

SELECT i.fullName, e.fullName
FROM inventory i 
LEFT JOIN employees e ON i.inventory_id = e.favorite_candy ;

SELECT quantity * price AS gross_inv_cost
FROM inventory 
WHERE fullName = 'M&Ms';


SELECT fullName, price 
FROM inventory 
WHERE price = (SELECT min(price) FROM inventory);

SELECT *
FROM inventory 
ORDER BY  price LIMIT 3;

SELECT avg(price)
FROM inventory 

SELECT 



