-- =========================================
-- File: kpi_queries.sql
-- Description: Business KPIs
-- =========================================

-- Total Revenue
SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM sales_data;

-- Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;

-- Average Order Value
SELECT 
ROUND(SUM(payment_value) / COUNT(DISTINCT order_id),2) AS AOV
FROM sales_data;

-- Monthly Revenue
SELECT 
DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
SUM(COALESCE(payment_value,0)) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Revenue by Category
SELECT 
product_category_name,
SUM(payment_value) AS revenue
FROM sales_data
GROUP BY product_category_name
ORDER BY revenue DESC;

-- Top Customers
SELECT 
customer_id,
SUM(payment_value) AS total_spent,
RANK() OVER (ORDER BY SUM(payment_value) DESC) AS rank_position
FROM sales_data
GROUP BY customer_id;

-- Customer Segmentation
SELECT 
customer_id,
total_spent,
CASE 
    WHEN total_spent > 1000 THEN 'High Value'
    WHEN total_spent > 500 THEN 'Medium Value'
    ELSE 'Low Value'
END AS segment
FROM (
    SELECT customer_id, SUM(payment_value) AS total_spent
    FROM sales_data
    GROUP BY customer_id
) t;