CREATE DATABASE da_project;
USE da_project;

SELECT COUNT(*) FROM amazon_orders;

-- MONTHLY REVENUE TREND

SELECT
	order_year,
    order_month,
    SUM(net_sales) AS monthly_sales
FROM amazon_orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

-- CATEGORY-WISE TOTAL REVENUE

SELECT
	category,
    SUM(net_sales) AS category_revenue
FROM amazon_orders
GROUP BY category
ORDER BY category_revenue DESC;

-- TOP 10 BEST-SELLING PRODUCTS

SELECT 
    productname,
    SUM(net_sales) AS total_revenue
FROM amazon_orders
GROUP BY productname
ORDER BY total_revenue DESC
LIMIT 10;

-- BRAND PERFORMANCE

SELECT 
    brand,
    SUM(net_sales) AS brand_revenue
FROM amazon_orders
GROUP BY brand
ORDER BY brand_revenue DESC;

-- ORDER STATUS BREAKDOWN

SELECT 
    orderstatus,
    COUNT(*) AS total_orders
FROM amazon_orders
GROUP BY orderstatus;

-- Top 10 Most Valuable Customers

SELECT 
    customername,
    SUM(net_sales) AS total_spent
FROM amazon_orders
GROUP BY customername
ORDER BY total_spent DESC
LIMIT 10;

-- City-Level Sales (Geographical Insight)

SELECT 
    city,
    SUM(net_sales) AS city_sales
FROM amazon_orders
GROUP BY city
ORDER BY city_sales DESC;

-- Discount Impact Analysis

SELECT
    category,
    AVG(discount_amount) AS avg_discount,
    SUM(net_sales) AS revenue_after_discount
FROM amazon_orders
GROUP BY category
ORDER BY avg_discount DESC;

-- Average Order Value (AOV) by Category

SELECT
    category,
    AVG(net_sales) AS avg_order_value
FROM amazon_orders
GROUP BY category
ORDER BY avg_order_value DESC;

-- High-Value Orders (Orders above 90th percentile)

WITH sales_distribution AS (
    SELECT 
        net_sales,
        NTILE(10) OVER (ORDER BY net_sales) AS decile
    FROM amazon_orders
)
SELECT * 
FROM sales_distribution
WHERE decile = 10;

-- Brand-Wise Quantity Sold

SELECT
    brand,
    SUM(quantity) AS total_quantity
FROM amazon_orders
GROUP BY brand
ORDER BY total_quantity DESC;











