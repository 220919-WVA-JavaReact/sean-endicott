-- This is a comment is SQL

-- datatype is data that info must conform to

--ctrl enter runs comnd




CREATE TABLE products (
	product_name varchar(25),
	product_price int,
	department varchar(25),
	quantity int

);

CREATE TABLE pokemon(
	"number" int,
	name varchar(25),
	type1 varchar(25),
	type2 varchar(25),
	"level" int,
	evolved bool
);


-- SQL has 5 sublanguages
-- DDL data definition language/ structure - schema ie. create table/ alter table
-- DML data manipulation lang. manipulate date (CRUD) create read update delete
-- ' ' for strings " " for column names
INSERT INTO products 
VALUES ('bike', 100, 'sports', 1)

INSERT INTO products 
VALUES ('toaster', 40, 'kitchen', 5)

INSERT INTO products(product_name, product_price, department)
VALUES ('tomato', 1, 'produce')

INSERT INTO pokemon 
VALUES (1, 'bulbasor', 'grass', 'poison', 23, FALSE) 

INSERT INTO pokemon 
values(1, 'vernasor', 'grass', 'poison', 38, true)









