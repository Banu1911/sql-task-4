//Create table Products
products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10, 2),
    quantity INT
)

//Inserting product details into products table
  
INSERT INTO products (product_id, product_name, category, price, quantity) VALUES
(1, 'Laptop', 'Electronics', 55000.00, 10),
(2, 'Smartphone', 'Electronics', 25000.00, 25),
(3, 'Headphones', 'Electronics', 1500.00, 50),
(4, 'Keyboard', 'Electronics', 700.00, 30),
(5, 'Office Chair', 'Furniture', 3500.00, 15),
(6, 'Desk', 'Furniture', 5000.00, 10),
(7, 'Notebook', 'Stationery', 50.00, 200),
(8, 'Pen', 'Stationery', 10.00, 500),
(9, 'Marker', 'Stationery', 30.00, 300),
(10, 'Water Bottle', 'Accessories', 120.00, 100),

//Total number of products in each category
  
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;

//Average price of products per each category
  
SELECT category, AVG(price) AS average_price
FROM products
GROUP BY category;

//Total quantity of products available in each category
  
SELECT category, SUM(quantity) AS total_quantity
FROM products
GROUP BY category;

//Categories with more than 10 products

SELECT category, COUNT(*) AS product_count
FROM products
GROUP BY category
HAVING COUNT(*) > 10;

//Highest price in each category

SELECT category, MAX(price) AS highest_price
FROM products
GROUP BY category;

//Total value of stock per category (price × quantity)

SELECT category, SUM(price * quantity) AS total_stock_value
FROM products
GROUP BY category;

//Count of distinct product names in each category

SELECT category, COUNT(DISTINCT product_name) AS unique_products
FROM products
GROUP BY category;
