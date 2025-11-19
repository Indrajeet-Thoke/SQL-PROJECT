--Compare each sale with previous sale of the same product (LAG).
SELECT 
    s.product_id,
    p.product_name,
    s.order_date,
    s.product_quantity,
    LAG(s.product_quantity, 1) OVER (PARTITION BY s.product_id ORDER BY s.order_date) AS prev_quantity
FROM sales_transactions s
JOIN product_dim p ON s.product_id = p.product_id
WHERE p.current_ind = 'Y'
