-- =========================================
-- Advanced Business Analysis Queries
-- =========================================

-- 1. Customer Lifetime Value (CLTV)
SELECT 
    customer_id,
    SUM(payment_value) AS lifetime_value
FROM sales_data
GROUP BY customer_id
ORDER BY lifetime_value DESC;


-- 2. Repeat Customers (Customer Retention Indicator)
SELECT 
    customer_id,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data
GROUP BY customer_id
HAVING COUNT(DISTINCT order_id) > 1;


-- 3. Revenue Contribution by Customer (Pareto Analysis)
SELECT 
    customer_id,
    SUM(payment_value) AS revenue,
    ROUND(
        SUM(payment_value) * 100 / SUM(SUM(payment_value)) OVER (),
        2
    ) AS contribution_pct
FROM sales_data
GROUP BY customer_id
ORDER BY revenue DESC;


-- 4. Order Frequency (Customer Behavior)
SELECT 
    customer_id,
    COUNT(DISTINCT order_id) AS orders,
    MIN(order_purchase_timestamp) AS first_order,
    MAX(order_purchase_timestamp) AS last_order
FROM sales_data
GROUP BY customer_id;


-- 5. Top Product Categories by Revenue
SELECT 
    product_category_name,
    SUM(payment_value) AS revenue
FROM sales_data
GROUP BY product_category_name
ORDER BY revenue DESC
LIMIT 10;


-- 6. Monthly Growth Rate
SELECT 
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS previous_month,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY month)) 
        / LAG(revenue) OVER (ORDER BY month) * 100,
        2
    ) AS growth_percentage
FROM (
    SELECT 
        DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
        SUM(payment_value) AS revenue
    FROM sales_data
    GROUP BY month
) t;
