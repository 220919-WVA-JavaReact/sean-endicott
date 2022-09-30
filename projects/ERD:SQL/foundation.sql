CREATE TABLE users(
	user_id serial PRIMARY KEY,
	fname varchar(25),
	lname varchar(25),
	email varchar(25),
	manager bool

);

CREATE TABLE accounts(
	registration_id serial primary KEY,
	userName varchar(255) NOT NULL UNIQUE,
	pWord varchar(255),
	account_status varchar DEFAULT 'Employee',
	user_id int REFERENCES users
);

CREATE TABLE tickets(
	ticket_id serial PRIMARY KEY, 
	amount int NOT NULL,
	description varchar(255) NOT NULL,
	status varchar(15) DEFAULT 'Pending'
);

	
CREATE TABLE accounts_tickets(
	account_id int REFERENCES accounts,
	ticket_id int REFERENCES tickets
)

ALTER TABLE tickets 
ADD COLUMN user_id int REFERENCES users;