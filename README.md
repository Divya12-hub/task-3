# Task 4 — SQL for Data Analysis (MySQL Workbench)

## Objective
The objective of this task is to perform SQL-based data analysis on an e-commerce dataset using **MySQL Workbench**.  
The task demonstrates database creation, data loading, writing queries, using aggregate functions, joins, subqueries, window functions, views, and query optimization.

---

## Dataset
A sample **e-commerce dataset** was used, containing the following tables:

- **customers**: customer_id, name, email, country  
- **products**: product_id, name, category, price  
- **orders**: order_id, customer_id, order_date, region, total_amount  
- **order_items**: order_item_id, order_id, product_id, quantity, unit_price, total_price  

Sample records were inserted for testing. (See `task4_queries.sql` for DDL + inserts).

---

## Steps Performed
1. **Created schema** in MySQL Workbench (`ecommerce_db`).  
2. **Defined tables** (customers, products, orders, order_items) using DDL.  
3. **Inserted sample data** into the tables.  
4. **Wrote SQL queries** to perform:
   - Basic `SELECT`, `WHERE`, `ORDER BY`, `LIMIT`  
   - Aggregations with `GROUP BY` and `HAVING`  
   - Joins (`INNER JOIN`, `LEFT JOIN`)  
   - Subqueries (to compare against averages)  
   - Aggregate metrics like **ARPU** (Average Revenue Per User)  
   - Window functions (`RANK()` for top products)  
   - Creating **Views** for reusable queries  
   - Query optimization using **Indexes** and `EXPLAIN`  
5. **Captured screenshots** of query results in Workbench.  

---

## Key Queries
- **Q1:** Last 10 Orders  
- **Q2:** Total Sales by Region  
- **Q3:** Sales by Product (JOIN order_items + products)  
- **Q4:** Customers with Spend > 1000 (HAVING)  
- **Q5:** Orders Above Average Size (Subquery)  
- **Q6:** ARPU (Average Revenue Per User)  
- **Q7:** Rank Products by Sales (Window Function)  
- **Q8:** Create View for Top Products  
- **Q9:** Indexes & `EXPLAIN`  

(Full SQL queries are inside `task4_queries.sql`)

---

## Deliverables
- `task4_queries.sql` — all queries with comments  
- `/screenshots/` — screenshots of query outputs  
- `README.md` — project documentation (this file)  

---

## Insights (Example)
- North region generated the highest revenue in the sample dataset.  
- Technology products contribute the majority of sales.  
- Customers with higher ARPU are mostly from India in this dataset.  
- Query performance improves after adding indexes on `order_date` and `customer_id`.  

---

## Repository Structure
