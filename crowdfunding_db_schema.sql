-- Categories Table Schema
CREATE TABLE Categories (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

-- Subcategories Table Schema
CREATE TABLE Subcategories (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

-- Contacts Table Schema
CREATE TABLE Contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    contact_email VARCHAR(100) UNIQUE NOT NULL
);

-- Campaigns Table Schema
CREATE TABLE Campaigns (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(20),
    backers_count INT,
    country VARCHAR(5),
    currency VARCHAR(5),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id)
);