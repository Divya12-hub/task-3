-- Switch to your schema
USE task4_elevatelabs_db;

-- Customers table
CREATE TABLE customers (
  customer_id   INT AUTO_INCREMENT PRIMARY KEY,
  name          VARCHAR(100),
  email         VARCHAR(120),
  country       VARCHAR(50)
);

-- Products table
CREATE TABLE products (
  product_id    INT AUTO_INCREMENT PRIMARY KEY,
  name          VARCHAR(120),
  category      VARCHAR(50),
  price         DECIMAL(10,2)
);

-- Orders table
CREATE TABLE orders (
  order_id      INT AUTO_INCREMENT PRIMARY KEY,
  customer_id   INT,
  order_date    DATE,
  region        VARCHAR(50),
  total_amount  DECIMAL(12,2),
  FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

-- Order items table
CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id      INT,
  product_id    INT,
  quantity      INT,
  unit_price    DECIMAL(10,2),
  total_price   DECIMAL(12,2),
  FOREIGN KEY(order_id) REFERENCES orders(order_id),
  FOREIGN KEY(product_id) REFERENCES products(product_id)
);






