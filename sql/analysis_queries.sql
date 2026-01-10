-- Top customers by revenue
SELECT c.customer_name, SUM(o.order_amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_status='Completed'
GROUP BY c.customer_name
ORDER BY total_revenue DESC;

-- Repeat vs One-time customers
SELECT customer_type,
       COUNT(customer_id) AS customer_count,
       SUM(order_amount) AS total_revenue
FROM (
    SELECT c.customer_id, o.order_amount,
           CASE WHEN COUNT(o.order_id) OVER(PARTITION BY c.customer_id)>1
                THEN 'Repeat Customer'
                ELSE 'One-time Customer' END AS customer_type
    FROM customers c
    JOIN orders o ON c.customer_id=o.customer_id
    WHERE o.order_status='Completed'
) t
GROUP BY customer_type;

-- Revenue by city
SELECT c.city, SUM(o.order_amount) AS revenue
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
WHERE o.order_status='Completed'
GROUP BY c.city
ORDER BY revenue DESC;