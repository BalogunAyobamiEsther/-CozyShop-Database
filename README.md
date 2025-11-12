# -CozyShop-Database
A MySQL project modeling a cozy handmade products store. It manages customers, employees, products, and sales data for tracking revenue and performance. Demonstrates database normalization, foreign key relationships, and SQL queries for business insights.

## 🎯 Project Goal

The goal of this project is to design a relational database that supports a retail store’s daily transactions and reporting needs.
It helps answer questions like:

Which customers made purchases and how much they spent

Which products generate the most revenue

Who the top employees and earliest hires are

The total sales performance across all transactions

## 🗂️ Database Design
Database Name

CozyShopDatabase

Tables and Relationships
Customers

Stores customer details such as names and email.

Primary Key: Customer_ID

Employees

Contains employee names, start dates, and job positions.

Primary Key: Employee_ID

Products

Lists all available products with their categories and prices.

Primary Key: Product_ID

Date_Table

Tracks purchase dates with day and month breakdowns.

Primary Key: Date_ID

Purchases

Stores all purchase transactions, linking customers, products, and dates.

Primary Key: Purchase_ID

Foreign Keys:

Customer_ID → Customers(Customer_ID)

Product_ID → Products(Product_ID)

Date_ID → Date_Table(Date_ID)

Entity Relationship (ERD) Overview

All transaction data in Purchases is linked to the Customers, Products, and Date_Table tables, forming a central fact table surrounded by descriptive dimension tables (Customer, Product, Date).

## 🧠 Example Queries and Insights
1️⃣ Display Full List of Purchases
SELECT 
    CONCAT(customers.customer_first_name, ' ', customers.customer_last_name) AS customer_full_name,
    products.product_name,
    date_table.purchase_date,
    purchases.total_price
FROM purchases 
JOIN customers ON purchases.customer_id = customers.customer_id
JOIN products ON purchases.product_id = products.product_id
JOIN date_table ON purchases.date_id = date_table.date_id
ORDER BY date_table.purchase_date;


### Insight: Displays every purchase with customer names, product details, purchase dates, and total amount spent.

2️⃣ Customers Who Haven’t Made Any Purchases
SELECT 
    CONCAT(customers.customer_first_name, ' ', customers.customer_last_name) AS customer_full_name
FROM customers 
LEFT JOIN purchases ON customers.customer_id = purchases.customer_id
WHERE purchases.purchase_id IS NULL;


### Insight: Identifies inactive customers — useful for marketing follow-ups.

3️⃣ Total Amount Spent by Each Customer
SELECT 
    CONCAT(customers.customer_first_name, ' ', customers.customer_last_name) AS customer_full_name,
    SUM(purchases.total_price) AS total_spent
FROM customers
JOIN purchases ON customers.customer_id = purchases.customer_id
GROUP BY customers.customer_id
ORDER BY total_spent DESC;


### Insight: Shows top-spending customers and overall purchase trends.

4️⃣ Top Two Most Expensive Products
SELECT 
    product_name,
    price
FROM products
ORDER BY price DESC
LIMIT 2;


### Insight: Reveals the highest-priced products, useful for pricing strategy.

5️⃣ Employees Who Started Before 2024
SELECT 
    CONCAT(employee_first_name, ' ', employee_last_name) AS employee_full_name,
    start_date,
    position_held
FROM employees
WHERE start_date < '2024-01-01';


### Insight: Lists long-serving employees — helpful for HR performance tracking.

6️⃣ Total Revenue Generated
SELECT 
    SUM(total_price) AS total_revenue
FROM purchases;


### Insight: Calculates total income from all recorded transactions.

## ⚙️ Tool Used:

MySQL Workbench — for schema design, data entry, queries, and ERD 
