--Find how many products each customer purchased (count of distinct products).
SELECT c.cust_id,
       COUNT(DISTINCT s.product_id) AS unique_products
FROM sales_transactions s
JOIN customer_dim c ON s.cust_id = c.cust_id
GROUP BY c.cust_id
ORDER BY unique_products DESC
