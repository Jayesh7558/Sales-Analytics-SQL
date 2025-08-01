-- Calculate total revenue
-- Total revenue across all transactions
SELECT 
    SUM(sold_quantity * product_price) AS total_revenue
FROM 
    fact_sales
JOIN 
    dim_product ON fact_sales.product_code = dim_product.product_code;

