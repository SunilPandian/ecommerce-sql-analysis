-- =========================================
-- File: data_import.sql
-- Description: Load CSV data into tables
-- =========================================

-- Customers
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_customers_dataset.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Orders
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, customer_id, order_status,
 @order_purchase_timestamp,
 @order_approved_at,
 @order_delivered_carrier_date,
 @order_delivered_customer_date,
 @order_estimated_delivery_date)
SET
order_purchase_timestamp = NULLIF(@order_purchase_timestamp, ''),
order_approved_at = NULLIF(@order_approved_at, ''),
order_delivered_carrier_date = NULLIF(@order_delivered_carrier_date, ''),
order_delivered_customer_date = NULLIF(@order_delivered_customer_date, ''),
order_estimated_delivery_date = NULLIF(@order_estimated_delivery_date, '');

-- Order Items
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_items_dataset.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Products (FIXED)
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_products_dataset.csv'
INTO TABLE products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(product_id, product_category_name,
 @product_name_length,
 @product_description_length,
 @product_photos_qty,
 @product_weight_g,
 @product_length_cm,
 @product_height_cm,
 @product_width_cm)
SET
product_name_length = NULLIF(@product_name_length, ''),
product_description_length = NULLIF(@product_description_length, ''),
product_photos_qty = NULLIF(@product_photos_qty, ''),
product_weight_g = NULLIF(@product_weight_g, ''),
product_length_cm = NULLIF(@product_length_cm, ''),
product_height_cm = NULLIF(@product_height_cm, ''),
product_width_cm = NULLIF(@product_width_cm, '');

-- Payments
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/olist_order_payments_dataset.csv'
INTO TABLE payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Reviews imported using the table import WIZ

-- Category Translation
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/product_category_name_translation.csv'
INTO TABLE category_translation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;