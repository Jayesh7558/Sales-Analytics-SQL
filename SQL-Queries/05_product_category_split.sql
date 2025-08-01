-- Revenue distribution by product category
SELECT 
    dp.category,
    SUM(fs.sold_quantity * dp.product_price) AS category_revenue
FROM 
    fact_sales fs
JOIN 
    dim_product dp ON fs.product_code = dp.product_code
GROUP BY 
    dp.category
ORDER BY 
    category_revenue DESC;

