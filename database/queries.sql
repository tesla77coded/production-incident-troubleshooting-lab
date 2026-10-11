-- 1. Investigate a payment/order status mismatch.
SELECT
    o.id AS order_id,
    o.amount AS order_amount,
    o.status AS order_status,
    p.id AS payment_id,
    p.amount AS payment_amount,
    p.status AS payment_status
FROM orders AS o
LEFT JOIN payments AS p ON p.order_id = o.id
WHERE o.id = 5002;

-- 2. Find pending orders and their associated payment status.
SELECT
    o.id AS order_id,
    o.status AS order_status,
    p.id AS payment_id,
    p.status AS payment_status
FROM orders AS o
LEFT JOIN payments AS p ON p.order_id = o.id
WHERE o.status = 'pending';

-- 3. Find orders with no corresponding payment record.
SELECT
    o.id AS order_id,
    o.amount,
    o.status
FROM orders AS o
LEFT JOIN payments AS p ON p.order_id = o.id
WHERE p.id IS NULL;

-- 4. Find orders whose payment and order amounts differ.
SELECT
    o.id AS order_id,
    o.amount AS order_amount,
    p.amount AS payment_amount
FROM orders AS o
JOIN payments AS p ON p.order_id = o.id
WHERE o.amount <> p.amount;

-- 5. Summarize orders by status.
SELECT
    status,
    COUNT(*) AS order_count
FROM orders
GROUP BY status;
