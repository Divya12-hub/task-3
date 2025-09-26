SELECT order_id, customer_id, order_date, region, total_amount
FROM orders
ORDER BY order_date DESC
LIMIT 10;

SELECT region, SUM(total_amount) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

SELECT p.name AS product, p.category, SUM(oi.total_price) AS product_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name, p.category
ORDER BY product_sales DESC;

SELECT c.name, SUM(o.total_amount) AS total_spend
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.name
HAVING SUM(o.total_amount) > 1000;

SELECT order_id, order_date, total_amount
FROM orders
WHERE total_amount > (SELECT AVG(total_amount) FROM orders);

SELECT AVG(user_total) AS ARPU
FROM (
  SELECT customer_id, SUM(total_amount) AS user_total
  FROM orders
  GROUP BY customer_id
) t;

SELECT p.name, SUM(oi.total_price) AS sales,
       RANK() OVER (ORDER BY SUM(oi.total_price) DESC) AS sales_rank
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name;

CREATE VIEW vw_top_products AS
SELECT p.name, SUM(oi.total_price) AS sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name;

CREATE INDEX idx_orders_date ON orders(order_date);

EXPLAIN SELECT * FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-02-28';

