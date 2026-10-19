-- Practice queries for an illustrative/sample e-commerce database schema.
-- These examples do NOT connect to or query DemoBlaze's real production database.
-- Assumed tables/columns: customers(customer_id, email, full_name, created_at),
-- products(product_id, product_name, unit_price, stock_quantity, is_active),
-- orders(order_id, customer_id, order_date, status, total_amount),
-- order_items(order_item_id, order_id, product_id, quantity, unit_price).
-- Adapt table and column names to a local practice database before running.

-- 1. SELECT: list active products with valid non-negative prices.
SELECT product_id, product_name, unit_price, stock_quantity
FROM products
WHERE is_active = 1
  AND unit_price >= 0
ORDER BY product_name;

-- 2. SELECT: inspect a customer's orders (replace the sample ID as needed).
SELECT order_id, customer_id, order_date, status, total_amount
FROM orders
WHERE customer_id = 1001
ORDER BY order_date DESC;

-- 3. JOIN: show each order with customer details.
SELECT
    o.order_id,
    o.order_date,
    o.status,
    c.customer_id,
    c.full_name,
    c.email
FROM orders AS o
JOIN customers AS c
    ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;

-- 4. JOIN: show order lines with product names and line amounts.
SELECT
    oi.order_id,
    oi.order_item_id,
    p.product_name,
    oi.quantity,
    oi.unit_price,
    oi.quantity * oi.unit_price AS calculated_line_amount
FROM order_items AS oi
JOIN products AS p
    ON p.product_id = oi.product_id
ORDER BY oi.order_id, oi.order_item_id;

-- 5. Duplicate check: find repeated customer email values.
SELECT email, COUNT(*) AS duplicate_count
FROM customers
WHERE email IS NOT NULL
GROUP BY email
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC, email;

-- 6. Duplicate check: identify repeated product names (review before treating
-- as invalid; some catalogues may legitimately reuse names).
SELECT product_name, COUNT(*) AS duplicate_count
FROM products
WHERE product_name IS NOT NULL
GROUP BY product_name
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC, product_name;

-- 7. Data validation: find products with missing names or invalid price/stock.
SELECT product_id, product_name, unit_price, stock_quantity
FROM products
WHERE product_name IS NULL
   OR TRIM(product_name) = ''
   OR unit_price IS NULL
   OR unit_price < 0
   OR stock_quantity IS NULL
   OR stock_quantity < 0;

-- 8. Data validation: find orders with missing customers or invalid totals.
SELECT order_id, customer_id, order_date, status, total_amount
FROM orders
WHERE customer_id IS NULL
   OR order_date IS NULL
   OR total_amount IS NULL
   OR total_amount < 0;

-- 9. Referential-integrity check: order rows without a matching customer.
SELECT o.order_id, o.customer_id
FROM orders AS o
LEFT JOIN customers AS c
    ON c.customer_id = o.customer_id
WHERE c.customer_id IS NULL;

-- 10. Validation: compare stored order totals with the sum of order lines.
-- Investigate differences; rounding, discounts, tax, or shipping may require
-- adapting the calculation to the sample schema's business rules.
SELECT
    o.order_id,
    o.total_amount AS stored_total,
    SUM(oi.quantity * oi.unit_price) AS calculated_items_total
FROM orders AS o
JOIN order_items AS oi
    ON oi.order_id = o.order_id
GROUP BY o.order_id, o.total_amount
HAVING o.total_amount <> SUM(oi.quantity * oi.unit_price)
ORDER BY o.order_id;
