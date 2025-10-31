# integrated-management
Task 3 – Create Stored Procedures for Inventory Management

# What I Did
I created a database-driven inventory management system using stored procedures in MySQL.
The main goal was to automate routine inventory operations such as:


Adding new products to the database


Updating stock quantities


Viewing product details


Calculating the total inventory value


All these operations were implemented using CREATE PROCEDURE, IN, and OUT parameters.

# How I Did It


Created a Database and Table


Database name: inventory_db


Table name: products


Columns: product_id, product_name, category, quantity, price


CREATE DATABASE IF NOT EXISTS inventory_db;
USE inventory_db;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);



Developed Stored Procedures


add_product → To insert new products


update_stock → To modify product stock levels


get_product → To fetch details of a product by ID


get_inventory_value → To calculate total inventory worth


Example: 
DELIMITER //

CREATE PROCEDURE add_product(

    IN p_name VARCHAR(100),
    
    IN p_category VARCHAR(50),
    
    IN p_quantity INT,
    
    IN p_price DECIMAL(10,2)
    
)
BEGIN

    INSERT INTO products (product_name, category, quantity, price)
    
    VALUES (p_name, p_category, p_quantity, p_price);
    
END //

DELIMITER ;



Tested the Procedures


Executed using CALL commands:

CALL add_product('Laptop', 'Electronics', 10, 75000.00);

CALL update_stock(1, 12);

CALL get_product(1);

CALL get_inventory_value(@value);

SELECT @value AS 'Total Inventory Value';



Verified successful output using the MySQL Workbench result grid.


<img width="1359" height="723" alt="integrated result" src="https://github.com/user-attachments/assets/5c7204a2-2ce5-41d0-8fc7-ab9809b05cca" />


# Why I Did It


To understand database automation through stored procedures.


To reduce repetitive SQL queries and make inventory operations efficient.


To enhance data integrity and security by managing operations within the database layer.


To gain practical experience with SQL procedural programming concepts (IN, OUT parameters).


To demonstrate backend logic automation, a key skill in real-world data and software projects.



# Tools Used


MySQL Workbench – for database creation and testing


SQL – for writing and executing stored procedures



# Result / Outcome


Successfully created and tested four stored procedures.


Achieved faster and more reliable data management for the inventory system.


Gained practical understanding of SQL automation techniques.

