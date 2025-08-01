-- Monthly sales trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sold_quantity * product_price) AS total_revenue
FROM 
    fact_sales fs
JOIN 
    dim_product dp ON fs.product_code = dp.product_code
GROUP BY 
    month
ORDER BY 
    month;
