--3] Retrieve all products with their latest (current) price.
SELECT * FROM PRODUCT_DIM
WHERE CURRENT_IND = 'Y'