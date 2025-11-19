--Find customers who purchased more than 5 items total.
SELECT 
    c.cust_id,
    SUM(CAST(s.product_quantity AS INT)) AS total_items
FROM sales_transactions s
JOIN customer_dim c ON s.cust_id = c.cust_id
GROUP BY c.cust_id
HAVING SUM(CAST(s.product_quantity AS INT)) > 5
ORDER BY total_items DESC
