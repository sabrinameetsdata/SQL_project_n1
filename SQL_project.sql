-- Total Sales by Category
SELECT product_category, COUNT(DISTINCT total_purchase)
FROM sales
GROUP BY product_category
ORDER BY product_category ASC;

-- Top 5 Products by Total Sales
SELECT product_category, MAX(DISTINCT total_purchase)
FROM sales
GROUP BY product_categoryvariable
ORDER BY product_category DESC
LIMIT 5;

-- Count of Orders by Status
SELECT COUNT(`Order ID`), Status
FROM amzsales25
GROUP BY Status;

-- Monthly Sales Trend
SELECT Date, `Total Sales` 
FROM amzsales25
WHERE Date LIKE '__-03%';


-- Most Common Payment Method
SELECT DISTINCT 
	payment_method, 
	COUNT(payment_method) AS t_payments
FROM sales
GROUP BY payment_method
ORDER BY t_payments DESC;


-- Customers with Multiple Orders in DESC order

SELECT 
	user_id,
    COUNT(transaction_id)
FROM sales
GROUP BY user_id
HAVING COUNT(transaction_id)> 2
ORDER BY COUNT(transaction_id) DESC;


-- filtering totla purchase between 20-40 years old
SELECT age,SUM(total_purchase) AS total_purchase_age
FROM sales
WHERE age BETWEEN 20 AND 40
GROUP BY age
ORDER BY age DESC;






