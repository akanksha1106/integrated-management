
USE inventory_db;

-- Create Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2)
);

-- Procedure 1: Add a new product
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

-- Procedure 2: Update stock quantity
DELIMITER //
CREATE PROCEDURE update_stock(
    IN p_id INT,
    IN new_quantity INT
)
BEGIN
    UPDATE products
    SET quantity = new_quantity
    WHERE product_id = p_id;
END //
DELIMITER ;

-- Procedure 3: Get product details by ID
DELIMITER //
CREATE PROCEDURE get_product(
    IN p_id INT
)
BEGIN
    SELECT * FROM products WHERE product_id = p_id;
END //
DELIMITER ;

-- Procedure 4: Get total value of inventory
DELIMITER //
CREATE PROCEDURE get_inventory_value(OUT total_value DECIMAL(15,2))
BEGIN
    SELECT SUM(quantity * price) INTO total_value FROM products;
END //
DELIMITER ;
