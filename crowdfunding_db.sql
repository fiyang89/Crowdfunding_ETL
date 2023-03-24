--ALWAYS IMPORT CSV FILES IN THE ORDER BELOW

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(50)
);

SELECT * FROM subcategory

CREATE TABLE category (
	category_id VARCHAR(50) PRIMARY KEY,
	category VARCHAR(50)
);

SELECT * FROM category

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(100)
);

SELECT * FROM contacts

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(100),
	description TEXT,
	goal NUMERIC(10,2),
	pledged NUMERIC(10,2),
	outcome VARCHAR(50),
	backers_count INT NOT NULL,
	country VARCHAR(10),
	currency VARCHAR(10),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(10),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * FROM campaign