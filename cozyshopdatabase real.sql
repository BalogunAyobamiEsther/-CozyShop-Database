USE CozyShopDatabase;


CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_First_name VARCHAR(50) NOT NULL,
    Customer_Last_name VARCHAR(50) NOT NULL,
    Customer_Email VARCHAR(100) NOT NULL UNIQUE
	);
    
CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    Employee_First_name VARCHAR(50) NOT NULL,
    Employee_Last_name VARCHAR(50) NOT NULL,
    Start_date DATE NOT NULL,
    Position_held VARCHAR(100) NOT NULL
	);
    
CREATE TABLE Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_name VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Price DECIMAL(10,2) NOT NULL
	);
    
CREATE TABLE Purchases (
    Purchase_ID INT PRIMARY KEY AUTO_INCREMENT,
    Date_ID INT NOT NULL, 
    Customer_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity_sold INT NOT NULL,
    Total_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
	);

CREATE TABLE Date_table (
    Date_ID INT PRIMARY KEY AUTO_INCREMENT,
    Purchase_date DATE,
    Purchase_month INT,
    Purchase_day INT
	);


ALTER TABLE Purchases
ADD CONSTRAINT fk_purchases_date
FOREIGN KEY (Date_ID) REFERENCES Date_table(Date_ID);

INSERT INTO Customers (Customer_ID, Customer_first_name, Customer_last_name, Customer_Email) VALUES
(1, 'Daniel', 'Benson', 'daniel.benson@example.com'),
(2, 'Rachel', 'Adams', 'rachel.adams@example.com'),
(3, 'Sarah', 'Walker', 'sarah.walker@example.com'),
(4, 'James', 'Brown', 'james.brown@example.com'),
(5, 'Laura', 'Wilson', 'laura.wilson@example.com'),
(6, 'Michael', 'Smith', 'michael.smith@example.com'),
(7, 'Jane', 'Carter', 'jane.carter@example.com'),
(8, 'Peter', 'Clark', 'peter.clark@example.com'),
(9, 'Linda', 'Johnson', 'linda.johnson@example.com'),
(10, 'David', 'Young', 'david.young@example.com'),
(11, 'Alice', 'Harris', 'alice.harris@example.com'),
(12, 'Brian', 'Scott', 'brian.scott@example.com'),
(13, 'Grace', 'Martin', 'grace.martin@example.com'),
(14, 'Henry', 'Turner', 'henry.turner@example.com'),
(15, 'Emma', 'Roberts', 'emma.roberts@example.com'),
(16, 'Samuel', 'Lewis', 'samuel.lewis@example.com'),
(17, 'Olivia', 'Walker', 'olivia.walker@example.com'),
(18, 'Ethan', 'Hall', 'ethan.hall@example.com'),
(19, 'Sophia', 'Allen', 'sophia.allen@example.com'),
(20, 'Noah', 'Wright', 'noah.wright@example.com'),
(21, 'Chloe', 'King', 'chloe.king@example.com'),
(22, 'Liam', 'Hill', 'liam.hill@example.com'),
(23, 'Amelia', 'Green', 'amelia.green@example.com'),
(24, 'Mason', 'Baker', 'mason.baker@example.com'),
(25, 'Isabella', 'Gonzalez', 'isabella.gonzalez@example.com'),
(26, 'Logan', 'Nelson', 'logan.nelson@example.com'),
(27, 'Mia', 'Cruz', 'mia.cruz@example.com'),
(28, 'Lucas', 'Perez', 'lucas.perez@example.com'),
(29, 'Aria', 'Mitchell', 'aria.mitchell@example.com'),
(30, 'Jacob', 'Simmons', 'jacob.simmons@example.com'),
(31, 'Ella', 'Reed', 'ella.reed@example.com'),
(32, 'Aiden', 'Bailey', 'aiden.bailey@example.com'),
(33, 'Zoe', 'Kelly', 'zoe.kelly@example.com'),
(34, 'Nathan', 'Rivera', 'nathan.rivera@example.com'),
(35, 'Lily', 'Murphy', 'lily.murphy@example.com'),
(36, 'Gabriel', 'Price', 'gabriel.price@example.com'),
(37, 'Layla', 'Howard', 'layla.howard@example.com'),
(38, 'Carter', 'Ward', 'carter.ward@example.com'),
(39, 'Victoria', 'Bell', 'victoria.bell@example.com'),
(40, 'Helen', 'Douglas', 'helen.douglas@example.com');


INSERT INTO Employees (Employee_ID, Employee_first_name, Employee_last_name, Start_date, Position_held) VALUES
(1, 'Emily', 'Stone', '2023-01-15', 'Sales Associate'),
(2, 'Mark', 'Johnson', '2022-10-10', 'Inventory Manager'),
(3, 'Hannah', 'Lee', '2023-03-01', 'Customer Service'),
(4, 'Andrew', 'Brown', '2021-12-20', 'Cashier'),
(5, 'Natalie', 'Kim', '2024-02-05', 'Sales Associate'),
(6, 'John', 'Doe', '2022-08-14', 'Inventory Manager'),
(7, 'Sophia', 'Garcia', '2023-05-01', 'Marketing Officer'),
(8, 'Michael', 'Wilson', '2022-06-30', 'Sales Associate'),
(9, 'Isabella', 'Martins', '2024-01-12', 'Customer Service'),
(10, 'Liam', 'Anderson', '2023-04-25', 'Cashier'),
(11, 'Ava', 'Thomas', '2021-11-11', 'Supervisor'),
(12, 'James', 'White', '2023-09-19', 'Sales Associate'),
(13, 'Mia', 'Lopez', '2022-07-03', 'Inventory Manager'),
(14, 'Elijah', 'Harris', '2023-02-14', 'Marketing Officer'),
(15, 'Amelia', 'Clark', '2021-09-22', 'Customer Service'),
(16, 'William', 'Lewis', '2023-06-05', 'Sales Associate'),
(17, 'Charlotte', 'Walker', '2022-10-01', 'Cashier'),
(18, 'Benjamin', 'Hall', '2024-03-18', 'Customer Service'),
(19, 'Harper', 'Allen', '2021-08-08', 'Supervisor'),
(20, 'Lucas', 'Young', '2023-01-01', 'Inventory Manager'),
(21, 'Evelyn', 'King', '2022-11-30', 'Sales Associate'),
(22, 'Mason', 'Wright', '2023-07-20', 'Marketing Officer'),
(23, 'Abigail', 'Scott', '2021-07-15', 'Supervisor'),
(24, 'Logan', 'Green', '2022-09-28', 'Cashier'),
(25, 'Ella', 'Baker', '2024-04-10', 'Sales Associate'),
(26, 'Daniel', 'Nelson', '2023-08-17', 'Inventory Manager'),
(27, 'Scarlett', 'Adams', '2022-05-25', 'Customer Service'),
(28, 'Matthew', 'Mitchell', '2023-10-11', 'Cashier'),
(29, 'Victoria', 'Perez', '2021-06-06', 'Marketing Officer'),
(30, 'Ethan', 'Roberts', '2023-12-09', 'Sales Associate'),
(31, 'Grace', 'Turner', '2022-04-14', 'Supervisor'),
(32, 'Henry', 'Campbell', '2024-01-20', 'Customer Service'),
(33, 'Lily', 'Phillips', '2023-03-27', 'Sales Associate'),
(34, 'Jayden', 'Parker', '2022-12-07', 'Cashier'),
(35, 'Chloe', 'Evans', '2021-05-11', 'Inventory Manager'),
(36, 'Jack', 'Edwards', '2023-11-03', 'Sales Associate'),
(37, 'Zoe', 'Collins', '2022-03-13', 'Marketing Officer'),
(38, 'Sebastian', 'Stewart', '2023-02-22', 'Customer Service'),
(39, 'Penelope', 'Sanchez', '2022-01-17', 'Supervisor'),
(40, 'Oliver', 'Morris', '2023-06-29', 'Cashier');


INSERT INTO Products (product_id, product_name, price, category) VALUES
(1, 'Knitted Baby Booties', 12.99, 'Baby'),
(2, 'Wool Winter Booties', 18.50, 'Winter'),
(3, 'Furry House Slippers', 20.00, 'Home'),
(4, 'Crochet Baby Shoes', 14.25, 'Baby'),
(5, 'Lace-Up Knit Booties', 16.75, 'Stylish'),
(6, 'Eco Wool Slippers', 22.90, 'Eco-friendly'),
(7, 'Animal-Themed Booties', 19.99, 'Kids'),
(8, 'Leather Patch Booties', 24.50, 'Premium'),
(9, 'Striped Indoor Booties', 15.00, 'Home'),
(10, 'Floral Pattern Booties', 17.25, 'Stylish'),
(11, 'Christmas Booties', 21.00, 'Seasonal'),
(12, 'Cotton Baby Slippers', 13.90, 'Baby'),
(13, 'Glitter Knit Booties', 18.75, 'Party'),
(14, 'Soft Sole Baby Booties', 12.50, 'Baby'),
(15, 'Grey Wool Booties', 19.99, 'Winter'),
(16, 'Pom Pom Booties', 17.50, 'Cute'),
(17, 'Cozy Cabin Booties', 20.00, 'Winter'),
(18, 'Hand-Dyed Slippers', 23.75, 'Eco-friendly'),
(19, 'Button-Up Booties', 14.90, 'Classic'),
(20, 'Chunky Knit Slippers', 18.25, 'Home'),
(21, 'Bright Color Booties', 15.99, 'Kids'),
(22, 'Denim Style Booties', 21.49, 'Stylish'),
(23, 'Rainbow Baby Booties', 13.75, 'Baby'),
(24, 'Striped Baby Slippers', 12.00, 'Baby'),
(25, 'Velvet Indoor Booties', 22.00, 'Luxury'),
(26, 'Mini Hiking Booties', 19.25, 'Adventure'),
(27, 'Star Pattern Booties', 16.99, 'Stylish'),
(28, 'Minimalist Knit Booties', 15.49, 'Simple'),
(29, 'Bunny Ears Booties', 20.00, 'Cute'),
(30, 'Sequin Slippers', 21.99, 'Party'),
(31, 'Knitted Ankle Slippers', 18.40, 'Winter'),
(32, 'Tie-Dye Baby Booties', 14.00, 'Baby'),
(33, 'Zebra Print Booties', 23.50, 'Stylish'),
(34, 'Toddler Slip-ons', 16.00, 'Kids'),
(35, 'Holiday Special Booties', 24.99, 'Seasonal'),
(36, 'Handmade Fleece Booties', 19.00, 'Winter'),
(37, 'Pastel Baby Slippers', 13.20, 'Baby'),
(38, 'Star Wars Booties', 25.00, 'Themed'),
(39, 'Sunshine Booties', 17.00, 'Stylish'),
(40, 'Ocean Blue Slippers', 20.99, 'Home');


INSERT INTO Date_table (Date_ID, Purchase_Date, Purchase_Month, Purchase_Day)
VALUES
(1, '2025-01-01', 1, 1),
(2, '2025-01-02', 1, 2),
(3, '2025-01-03', 1, 3),
(4, '2025-01-04', 1, 4),
(5, '2025-01-05', 1, 5),
(6, '2025-01-06', 1, 6),
(7, '2025-01-07', 1, 7),
(8, '2025-01-08', 1, 8),
(9, '2025-01-09', 1, 9),
(10, '2025-01-10', 1, 10),
(11, '2025-01-11', 1, 11),
(12, '2025-01-12', 1, 12),
(13, '2025-01-13', 1, 13),
(14, '2025-01-14', 1, 14),
(15, '2025-01-15', 1, 15),
(16, '2025-01-16', 1, 16),
(17, '2025-01-17', 1, 17),
(18, '2025-01-18', 1, 18),
(19, '2025-01-19', 1, 19),
(20, '2025-01-20', 1, 20),
(21, '2025-01-21', 1, 21),
(22, '2025-01-22', 1, 22),
(23, '2025-01-23', 1, 23),
(24, '2025-01-24', 1, 24),
(25, '2025-01-25', 1, 25),
(26, '2025-01-26', 1, 26),
(27, '2025-01-27', 1, 27),
(28, '2025-01-28', 1, 28),
(29, '2025-01-29', 1, 29),
(30, '2025-01-30', 1, 30),
(31, '2025-01-31', 1, 31),
(32, '2025-02-01', 2, 1),
(33, '2025-02-02', 2, 2),
(34, '2025-02-03', 2, 3),
(35, '2025-02-04', 2, 4),
(36, '2025-02-05', 2, 5),
(37, '2025-02-06', 2, 6),
(38, '2025-02-07', 2, 7),
(39, '2025-02-08', 2, 8),
(40, '2025-02-09', 2, 9);


INSERT INTO Purchases (Purchase_ID, Customer_ID, Product_ID, Quantity_sold, total_Price, Date_ID)
VALUES
(1,  101,  201,  2,  500.00,  1),
(2,  102,  202,  1,  1500.00,  2),
(3,  103,  203,  5,  200.00,  3),
(4,  104,  204,  3,  350.00,  4),
(5,  105,  205,  1,  2500.00,  5),
(6,  106,  206,  4,  1200.00,  6),
(7,  107,  207,  2,  800.00,  7),
(8,  108,  208,  6,  90.00,   8),
(9,  109,  209,  1,  999.00,  9),
(10, 110,  210,  3,  750.00,  10),
(11, 111,  211,  2,  430.00,  11),
(12, 112,  212,  5,  180.00,  12),
(13, 113,  213,  1,  3000.00, 13),
(14, 114,  214,  4,  600.00,  14),
(15, 115,  215,  2,  850.00,  15),
(16, 116,  216,  7,  65.00,   16),
(17, 117,  217,  1,  4500.00, 17),
(18, 118,  218,  2,  1300.00, 18),
(19, 119,  219,  3,  720.00,  19),
(20, 120,  220,  5,  210.00,  20),
(21, 121,  221,  2,  1000.00, 21),
(22, 122,  222,  1,  2800.00, 22),
(23, 123,  223,  4,  550.00,  23),
(24, 124,  224,  3,  690.00,  24),
(25, 125,  225,  2,  430.00,  25),
(26, 126,  226,  6,  99.00,   26),
(27, 127,  227,  1,  4700.00, 27),
(28, 128,  228,  3,  820.00,  28),
(29, 129,  229,  2,  650.00,  29),
(30, 130,  230,  5,  250.00,  30),
(31, 131,  231,  4,  770.00,  31),
(32, 132,  232,  1,  3100.00, 32),
(33, 133,  233,  2,  940.00,  33),
(34, 134,  234,  6,  89.00,   34),
(35, 135,  235,  3,  880.00,  35),
(36, 136,  236,  1,  2700.00, 36),
(37, 137,  237,  4,  660.00,  37),
(38, 138,  238,  2,  500.00,  38),
(39, 139,  239,  5,  190.00,  39),
(40, 140,  240,  1,  3500.00, 40);


SELECT * FROM Customers;
SELECT * FROM Employees;
SELECT * FROM Products;
SELECT * FROM Purchases;
SELECT * FROM Date_table;


-- Q8 Display the full list of purchases showing customer full name, product name, purchase date, and amount spent.
SELECT 
    CONCAT(customers.customer_first_name, ' ', customers.customer_last_name) AS customer_full_name,
    products.product_name,
    date_table.purchase_date,
    purchases.total_price
FROM purchases 
JOIN customers 
    ON purchases.customer_id = customers.customer_id
JOIN products  
    ON purchases.product_id = products.product_id
JOIN date_table
    ON purchases.date_id = date_table.date_id
ORDER BY date_table.purchase_date;

-- Q9. List all customers who have not made any purchases
SELECT 
    CONCAT(customers.customer_first_name, ' ', customers.customer_last_name) AS customer_full_name
FROM customers 
LEFT JOIN purchases ON customers.customer_id = purchases.customer_id
WHERE purchases.purchase_id IS NULL;


-- Q10. Show the total amount spent by each customer
SELECT 
    CONCAT(customers.customer_first_name, ' ', customers.customer_last_name) AS customer_full_name,
    SUM(purchases.total_price) AS total_spent
FROM customers
JOIN purchases ON customers.customer_id = purchases.customer_id
GROUP BY customers.customer_id
ORDER BY total_spent DESC;


-- Q11. Identify the top two most expensive products
SELECT 
    product_name,
    price
FROM products
ORDER BY price DESC
LIMIT 2;


-- Q12. List employees who started working before January 1st, 2024
SELECT 
    CONCAT(employee_first_name, ' ', employee_last_name) AS employee_full_name,
    start_date,
    position_held
FROM employees
WHERE start_date < '2024-01-01';

-- Q13. What is the total revenue generated from all purchases?
SELECT 
    SUM(total_price) AS total_revenue
FROM purchases;





