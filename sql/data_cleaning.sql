-- =========================================
-- File: data_cleaning.sql
-- Description: Cleaned dataset view
-- =========================================

CREATE OR REPLACE VIEW sales_data AS
SELECT 
    o.order_id,
    o.customer_id,
    o.order_purchase_timestamp,
    
    oi.product_id,
    oi.price,
    oi.freight_value,
    
    p.product_category_name,
    
    c.customer_city,
    c.customer_state,
    
    COALESCE(pay.payment_value, 0) AS payment_value

FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
LEFT JOIN products p ON oi.product_id = p.product_id
JOIN customers c ON o.customer_id = c.customer_id
LEFT JOIN payments pay ON o.order_id = pay.order_id

WHERE o.order_status = 'delivered';