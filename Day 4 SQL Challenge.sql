SELECT product_id, product_name, price FROM Product ORDER BY price DESC;

SELECT product_id, product_name, price FROM Product ORDER BY price DESC LIMIT 3;

SELECT SUM(sale_amount) AS total_sales FROM Sales;

SELECT AVG(sale_amount) AS average_sale_amount FROM Sales;

SELECT COUNT(*) AS total_sales_count, MAX(sale_amount) AS highest_sale_amount, MIN(sale_amount) AS lowest_sale_amount FROM Sales;

SELECT s.product_id, 
p.product_name, 
SUM(s.sale_amount) AS total_sales_amount FROM Sales AS s JOIN Product AS p ON p.product_id = s.product_id 
GROUP BY s.product_id, p.product_name;

SELECT s.product_id, p.product_name, 
SUM(s.sale_amount) AS total_sales_amount FROM Sales AS s JOIN Product AS p ON p.product_id = s.product_id 
GROUP BY s.product_id, p.product_name 
HAVING SUM(s.sale_amount) > 50000;

SELECT s.product_id, p.product_name, 
SUM(s.sale_amount) AS total_sales_amount FROM Sales AS s JOIN Product AS p ON p.product_id = s.product_id 
GROUP BY s.product_id, p.product_name 
ORDER BY SUM(s.sale_amount) DESC;

SELECT s.product_id, p.product_name,
SUM(s.sale_amount) AS total_sales_amount FROM Sales AS s JOIN Product AS p ON p.product_id = s.product_id 
GROUP BY s.product_id, p.product_name 
ORDER BY SUM(s.sale_amount) DESC LIMIT 3;

SELECT s.product_id, p.product_name, 
SUM(s.sale_amount) AS total_sales_amount, 
AVG(s.sale_amount) AS average_sale_amount FROM Sales AS s JOIN Product AS p ON p.product_id = s.product_id 
GROUP BY s.product_id, p.product_name 
HAVING SUM(s.sale_amount) > 30000 AND AVG(s.sale_amount) > 10000;
