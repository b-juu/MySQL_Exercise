-- find all products
SELECT * FROM products;
-- find all products that cost $1400
SELECT * FROM products
WHERE price = 1400.00;
-- find all products that cost $11.99 or $13.99
SELECT * FROM products
WHERE price = 11.99 or 13.99;
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE NOT (price = 11.99);
-- find all products and sort them by price from greatest to least
SELECT * FROM products
ORDER BY price DESC;
-- find all employees who don't have a middle initial
SELECT * FROM  employees
WHERE MiddleInitial is null;
-- find distinct product prices
SELECT DISTINCT price FROM products;
-- find all employees whose first name starts with the letter ‘j’
SELECT * FROM employees
WHERE first_name LIKE 'J%';
-- find all Macbooks
SELECT * FROM products
WHERE product_name LIKE '%Macbook%';
-- find all products that are on sale
SELECT * FROM products
WHERE on_sale = 1;
-- find the average price of all products
SELECT AVG(price) AS average_price
FROM products;
-- find all Geek Squad employees who don't have a middle initial
SELECT * FROM employees
WHERE Title = 'Geek Squad' AND MiddleInitial IS NULL;
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest.
SELECT * FROM products
WHERE StockLevel BETWEEN 500 AND 1200
ORDER BY price;



-- using select
SELECT * FROM employees;

SELECT Name, Price FROM products
WHERE Price > 500.00;

SELECT * FROM  employees
WHERE MiddleInitial is not null;

SELECT SUM(Price) as "Total Price" FROM products as p;

SELECT Name, Price from products
WHERE Name LIKE '';

-- using insert
INSERT INTO products (Name, Price, CategoryID, OnSale, StockLevel)
VALUES ("Seth's Product", 500.00, 3, 0, 1500);
SELECT * FROM products;

