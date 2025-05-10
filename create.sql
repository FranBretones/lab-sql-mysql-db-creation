create DATABASE IF NOT EXISTS lab_mysql;
use lab_mysql;

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(20),
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

DROP TABLE IF EXISTS customer;
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id VARCHAR(20) UNIQUE NOT NULL,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(150),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(50),
    zip_code VARCHAR(20)
);
    
DROP TABLE IF EXISTS salesperson;
CREATE TABLE salespersons (
	id	INT AUTO_INCREMENT PRIMARY KEY,
    staff_id INT,	
    name_staff VARCHAR(50),
    store VARCHAR(50)
	);
    
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(30) UNIQUE NOT NULL,
    invoice_date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES cars(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (salesperson_id) REFERENCES salespersons(id)
);










    