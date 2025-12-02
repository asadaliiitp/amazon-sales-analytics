![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python)
![Power BI](https://img.shields.io/badge/PowerBI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![MySQL](https://img.shields.io/badge/SQL-MySQL-blue?logo=mysql)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Cleaning-150458?logo=pandas)
![NumPy](https://img.shields.io/badge/NumPy-1.26+-blue?logo=numpy)
![DAX](https://img.shields.io/badge/DAX-Data%20Modeling-yellow)

📊 Amazon Sales Analytics Dashboard

An end-to-end data analytics project using
Python · SQL · Power BI


---

⭐ 1. Project Overview

This project analyzes 100,000 Amazon sales records to uncover insights related to:

- Sales performance

- Customer purchasing behavior

- Product & category trends

- Geographic patterns

- Revenue drivers


The analysis covers the full data pipeline:

✔ Data Cleaning & Feature Engineering (Python)
✔ SQL Exploratory Analysis
✔ Interactive Power BI Dashboard
✔ Advanced Visuals (ArcGIS, Ribbon Chart, Decomposition Tree, Key Influencers)

This project demonstrates real-world data analyst skills used in business intelligence.


---

⭐ 2. Dataset Summary

The dataset includes:

- Order details: orderid, orderdate, status, payment method

- Customer information: customername, city, state, country

- Product info: productname, category, brand

- Sales metrics: quantity, unitprice, total amount, discount, tax, shipping cost

- Feature-engineered fields: order_year, order_month, order_quarter, gross_amount, discount_amount, net_sales

Total Rows: 100,000
Total Columns: 27

---

⭐ 3. Python Data Cleaning & Feature Engineering

🔧 Tasks Performed

- Removed whitespace from text columns

- Converted datatypes (dates, numerics, text)

- Created new fields:

1. Gross Amount = Quantity × Unit Price

2. Discount Amount = Gross × Discount

3. Net Sales = Gross – Discount

4. Year, Month, Quarter


- Exported cleaned dataset → Amazon_cleaned.csv


- Python was used to ensure clean input for SQL + Power BI.


---

⭐ 4. SQL Analysis

SQL was used to explore customer, product, and geographic performance.

🔍 Key SQL Queries:

a. Total revenue

b. Monthly revenue trends

c. Category revenue ranking

d. Top 10 products

e. Top 10 customers

f. City-level revenue

g. Discount impact

h. Payment method distribution

i. Seller performance

j. Customer Lifetime Value (CLV)


📌 Sample Query (Top Customers)

SELECT 
    customername,
    SUM(net_sales) AS total_spent
FROM amazon_orders
GROUP BY customername
ORDER BY total_spent DESC
LIMIT 10;


---

⭐ 5. Power BI Dashboard

The dashboard is designed across 3 interactive pages, using a consistent theme and professional layout.


---

🔵 PAGE 1 — Executive Summary

⭐ KPIs

1. Total Sales: 84.24M

2. Total Orders: 100K

3. Total Quantity Sold: 300K

4. Total Discount: 6.78M

5. AOV: 842.38


⭐ Monthly Sales Trend

1. Sales fluctuate between 6.4M–7.2M monthly

2. Strong peaks around June & October

3. Lowest dip in February


⭐ Category-Wise Revenue

Top performing categories:

1. Electronics


2. Sports & Outdoors


3. Clothing


4. Books



⭐ Order Status Breakdown

1. Payment Method Distribution:

2. Credit Card: 34.98%

3. Debit Card: 20.2%

3. Amazon Pay: 15.14%

4. UPI: 14.9%

5. Others (Net Banking, COD) follow



---

🟣 PAGE 2 — Product & Category Insights

⭐ Top 10 Selling Products

Examples:

    - Memory Card 128GB

    - LED Desk Lamp

    - Mechanical Keyboard

    - Smartwatch

    - Gaming Mouse


⭐ Price vs Quantity (Bubble Chart)

- Higher-priced items show moderate sales

- Mid-priced items dominate quantity sold

- Strong cluster around unit price 295–310


⭐ Quantity Sold by Category

Electronics & Sports/Outdoors lead in volume

Clothing has the lowest quantity sold


⭐ Total Sales by Brand

Top-performing brands:

CoreTech

KiddoFun

ReadMore

UrbanStyle

Zenith



---

🟩 PAGE 3 — Customer & Geography Insights

⭐ ArcGIS Geographic Analysis

Highest sales clusters around:

San Francisco

New York

Toronto

Mexico City

India (several cities)



⭐ Key Influencers (AI-driven insight)

Major factors increasing Total Sales:

Higher Quantity (+33.25K impact)

Higher Discounts (+4.07K impact)


⭐ Revenue Breakdown (Decomposition Tree)

Top contributors:

Country: United States

City: San Jose & Indianapolis

Category: Electronics & Clothing

Brand: ReadMore, HomeEase, BrightLux

Top Customers: Arjun Verma, Rohit Gupta, Simran Joshi


⭐ City-Level Revenue (Heatmap)

Highest performing cities:

San Jose

Indianapolis

Denver



---

⭐ 6. Key Business Insights

💰 Sales Insights

The company generated 84M+ revenue with strong month-to-month stability.

Peak demand months: June & October.

Electronics dominate both sales and quantity.


📦 Product Insights

Small electronics & accessories (Memory Card, LED Lamp) are top sellers.

Brands like CoreTech and ReadMore consistently outperform others.


🛒 Customer Insights

A few high-value customers like Arjun Verma and Simran Joshi contribute significantly.

Higher order quantity strongly influences revenue (per AI model).


🌍 Geography Insights

U.S. is the strongest region, especially California.

Other hotspots: Toronto, Mexico City, and major Indian metros.



---

⭐ 7. Repository Structure

├── Amazon_cleaned.csv
├── Amazon_Sales_Analytics.pbix
├── Dashboard_Pages/
│   ├── Page1_Executive_Summary.png
│   ├── Page2_Product_Insights.png
│   ├── Page3_Customer_Geography.png
├── Amazon_Sales_Dashboard.pdf
└── README.md


---

⭐ 8. Tools Used

Python (pandas, numpy)

MySQL / SQL queries

Power BI (ArcGIS, Ribbon Chart, Decomposition Tree)

Excel (optional)



---

⭐ 9. Future Enhancements

Predictive forecasting

RFM Customer Segmentation

Profit margin analysis

Automated ETL pipeline



---

⭐ 10. How to Use

1. Download .pbix file


2. Open in Power BI Desktop


3. Explore slicers, drilldowns, and visuals


4. Use SQL file for standalone analysis




---
