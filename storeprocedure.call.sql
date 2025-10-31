USE inventory_db;

-- Add sample products
CALL add_product('Laptop', 'Electronics', 12, 75000.00);
CALL add_product('Mobile', 'Electronics', 25, 20000.00);

-- Update stock
CALL update_stock(1, 12);

-- Get a product
CALL get_product(2);

-- Get total inventory value
CALL get_inventory_value(@value);
SELECT @value AS 'Total Inventory Value';
