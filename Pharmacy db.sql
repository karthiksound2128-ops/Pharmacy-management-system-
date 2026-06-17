CREATE DATABASE pharmacy_db;
USE pharmacy_db;

-- Medicines Table
CREATE TABLE medicines (
    medicine_id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_name VARCHAR(100),
    category VARCHAR(50),
    price DOUBLE,
    stock INT
);

-- Suppliers Table
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY AUTO_INCREMENT,
    supplier_name VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(200)
);

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    phone VARCHAR(15)
);

-- Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100),
    position VARCHAR(50),
    salary DOUBLE
);

-- Sales Table
CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_id INT,
    quantity INT,
    total_amount DOUBLE,
    sale_date DATE,
    FOREIGN KEY(medicine_id)
    REFERENCES medicines(medicine_id)
);
