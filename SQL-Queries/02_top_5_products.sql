-- Top 5 best-selling products by revenue
SELECT 
    dp.product_name,
    SUM(fs.sold_quantity * dp.product_price) AS revenue
FROM 
    fact_sales fs
JOIN 
    dim_product dp ON fs.product_code = dp.product_code
GROUP BY 
    dp.product_name
ORDER BY 
    revenue DESC
LIMIT 5;
