--Top 5 most profitable customers by product variety.
SELECT 
    c.cust_id,
    COUNT(DISTINCT s.product_id) AS unique_products,
    SUM(CAST(s.product_quantity AS INT) * CAST(p.product_price AS FLOAT)) AS total_spent
FROM sales_transactions s
JOIN customer_dim c ON s.cust_id = c.cust_id
JOIN product_dim p ON s.product_id = p.product_id
WHERE p.current_ind = 'Y'
GROUP BY c.cust_id
ORDER BY unique_products DESC, total_spent DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY

