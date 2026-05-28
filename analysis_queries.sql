// 1. Total Sales (Overall Business)
SELECT SUM(Sales) AS total_sales 
FROM superstore_sales;

// 2. Sales by Category
SELECT Category, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY Category
ORDER BY total_sales DESC;


// 3. Top 5 Selling Products
SELECT `Product Name`, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY `Product Name`
ORDER BY total_sales DESC
LIMIT 5;

//4. Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY Region
ORDER BY total_sales DESC;

//5. Sales by State (Advanced 🔥)
SELECT State, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY State
ORDER BY total_sales DESC
LIMIT 10;

//6. Top Customers
SELECT `Customer Name`, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 5;

//7. Sales by Segment
SELECT Segment, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY Segment;


// 8. Sales by Sub-Category (Very Important 🔥)
SELECT `Sub-Category`, SUM(Sales) AS total_sales
FROM superstore_sales
GROUP BY `Sub-Category`
ORDER BY total_sales DESC;
