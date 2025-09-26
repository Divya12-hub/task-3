-- Customers
INSERT INTO customers (name, email, country) VALUES
('Asha Rao','asha@example.com','India'),
('Ravi Kumar','ravi@example.com','India'),
('Divyashree','divya@gmail.com','India'),
('John Smith','john@example.com','USA');

-- Products
INSERT INTO products (name, category, price) VALUES
('Laptop A','Technology',1200.00),
('Office Chair','Furniture',350.00),
('Notebook','Office Supplies',5.00),
('Smartphone','Technology',800.00);

-- Orders
INSERT INTO orders (customer_id, order_date, region, total_amount) VALUES
(1,'2023-01-05','North',1200.00),
(2,'2023-01-06','East',355.00),
(1,'2023-02-10','West',805.00);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price, total_price) VALUES
(1,1,1,1200.00,1200.00),
(2,2,1,350.00,350.00),
(2,3,1,5.00,5.00),
(3,4,1,800.00,800.00),
(3,3,1,5.00,5.00);
