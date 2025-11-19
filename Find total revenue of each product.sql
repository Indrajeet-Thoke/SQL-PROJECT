--Find total revenue of each product.
SELECT 
    p.product_name,
    SUM(CAST(s.product_quantity AS INT) * CAST(p.product_price AS FLOAT)) AS total_revenue
FROM sales_transactions s
JOIN product_dim p ON s.product_id = p.product_id
WHERE p.current_ind = 'Y'
GROUP BY p.product_name
ORDER BY total_revenue DESC;

