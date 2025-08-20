--     create database
CREATE DATABASE project_SG1;

-- Create TABLE
CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(50),
    quantity INT,
    price_per_unit NUMERIC(10,2),
    cogs NUMERIC(10,2),
    total_sale NUMERIC(12,2)
);

INSERT INTO retail_sales VALUES
(1, '2025-08-01', '10:15:00', 101, 'Male', 25, 'Electronics', 2, 450.00, 800.00, 900.00),
(2, '2025-08-01', '11:05:00', 102, 'Female', 32, 'Clothing', 3, 50.00, 120.00, 150.00),
(3, '2025-08-01', '12:30:00', 103, 'Male', 41, 'Groceries', 5, 20.00, 80.00, 100.00),
(4, '2025-08-01', '13:45:00', 104, 'Female', 28, 'Sports', 1, 299.00, 250.00, 299.00),
(5, '2025-08-01', '15:10:00', 105, 'Male', 36, 'Furniture', 2, 120.00, 200.00, 240.00),
(6, '2025-08-02', '09:20:00', 106, 'Female', 29, 'Clothing', 4, 40.00, 120.00, 160.00),
(7, '2025-08-02', '10:50:00', 107, 'Male', 33, 'Electronics', 1, 799.00, 600.00, 799.00),
(8, '2025-08-02', '11:35:00', 108, 'Female', 22, 'Groceries', 10, 10.00, 80.00, 100.00),
(9, '2025-08-02', '14:00:00', 109, 'Male', 45, 'Clothing', 2, 75.00, 120.00, 150.00),
(10, '2025-08-02', '16:25:00', 110, 'Female', 31, 'Sports', 1, 250.00, 200.00, 250.00),
(11, '2025-08-03', '09:40:00', 111, 'Male', 27, 'Groceries', 6, 15.00, 70.00, 90.00),
(12, '2025-08-03', '11:15:00', 112, 'Female', 40, 'Furniture', 1, 500.00, 400.00, 500.00),
(13, '2025-08-03', '13:05:00', 113, 'Male', 35, 'Clothing', 5, 45.00, 180.00, 225.00),
(14, '2025-08-03', '14:20:00', 114, 'Female', 23, 'Electronics', 1, 999.00, 700.00, 999.00),
(15, '2025-08-03', '15:50:00', 115, 'Male', 30, 'Sports', 2, 150.00, 250.00, 300.00),
(16, '2025-08-04', '10:30:00', 116, 'Female', 26, 'Clothing', 3, 60.00, 150.00, 180.00),
(17, '2025-08-04', '12:45:00', 117, 'Male', 39, 'Groceries', 8, 12.00, 80.00, 96.00),
(18, '2025-08-04', '14:10:00', 118, 'Female', 34, 'Furniture', 1, 650.00, 500.00, 650.00),
(19, '2025-08-04', '15:25:00', 119, 'Male', 29, 'Electronics', 1, 1200.00, 900.00, 1200.00),
(20, '2025-08-04', '17:00:00', 120, 'Female', 42, 'Clothing', 2, 85.00, 140.00, 170.00),
(21, '2025-08-05', '09:15:00', 121, 'Male', 24, 'Groceries', 7, 18.00, 100.00, 126.00),
(22, '2025-08-05', '10:40:00', 122, 'Female', 33, 'Sports', 1, 299.00, 240.00, 299.00),
(23, '2025-08-05', '12:20:00', 123, 'Male', 37, 'Furniture', 1, 700.00, 550.00, 700.00),
(24, '2025-08-05', '13:30:00', 124, 'Female', 21, 'Clothing', 4, 35.00, 100.00, 140.00),
(25, '2025-08-05', '15:10:00', 125, 'Male', 32, 'Electronics', 1, 850.00, 650.00, 850.00),
(26, '2025-08-06', '10:05:00', 126, 'Female', 38, 'Groceries', 9, 11.00, 80.00, 99.00),
(27, '2025-08-06', '11:45:00', 127, 'Male', 28, 'Clothing', 2, 55.00, 90.00, 110.00),
(28, '2025-08-06', '13:15:00', 128, 'Female', 35, 'Furniture', 2, 400.00, 600.00, 800.00),
(29, '2025-08-06', '14:50:00', 129, 'Male', 43, 'Sports', 1, 275.00, 200.00, 275.00),
(30, '2025-08-06', '16:30:00', 130, 'Female', 27, 'Electronics', 1, 950.00, 700.00, 950.00);

SELECT * FROM retail_sales;

-- 2. Data Exploration & Cleaning
-- 1.Record Count: Determine the total number of records in the dataset.
-- 2.Customer Count: Find out how many unique customers are in the dataset.
-- 3.Category Count: Identify all unique product categories in the dataset.
-- 4.Null Value Check: Check for any null values in the dataset and delete records with missing data.
SELECT COUNT(*) FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;

SELECT * FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;

DELETE FROM retail_sales
WHERE 
    sale_date IS NULL OR sale_time IS NULL OR customer_id IS NULL OR 
    gender IS NULL OR age IS NULL OR category IS NULL OR 
    quantity IS NULL OR price_per_unit IS NULL OR cogs IS NULL;


-- 3. Data Analysis & Findings
-- The following SQL queries were developed to answer specific business questions:

-- 1.Write a SQL query to retrieve all columns for sales made on '2022-11-05:


SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';

-- 2.Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:-- 

SELECT * 
FROM retail_sales
WHERE 
    category = 'Clothing'
    AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
    AND quantity >= 4;
   
-- 3.Write a SQL query to calculate the total sales (total_sale) for each category.:
    
    SELECT 
    category,
    SUM(total_sale) as net_sale,
    COUNT(*) as total_orders
FROM retail_sales
GROUP BY 1
;

-- 4.Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:
select   AVG(age)
from retail_sales
WHERE category = 'Beauty'
;
-- 5.Write a SQL query to find all transactions where the total_sale is greater than 1000.: (OR)  --
select *
from retail_sales
where total_sale >= 1000
;

-- --6. Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:
SELECT 
    category,
    gender,
    COUNT(*) as total_trans
FROM retail_sales
GROUP 
    BY 
    category,
    gender
ORDER BY 1
;
--------  (OR )
select category,gender,COUNT(*)
FROM retail_sales
GROUP BY
category,gender
ORDER BY 1
LIMIT 5
;
-- Write a SQL query to calculate the average sale for each month. Find out best selling month in each year:

SELECT 
       year,
       month,
    avg_sale
FROM 
(    
SELECT 
    EXTRACT(YEAR FROM sale_date) as year,
    EXTRACT(MONTH FROM sale_date) as month,
    AVG(total_sale) as avg_sale,
    RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date) ORDER BY AVG(total_sale) DESC) AS TOP
FROM retail_sales
GROUP BY 1, 2
) as BEST
WHERE TOP = 1
;

-- **Write a SQL query to find the top 5 customers based on the highest total sales **:

SELECT 
	customer_id,
    SUM(total_sale) AS HIGHEST_SALES 
    from retail_sales
    GROUP BY customer_id
    ORDER BY HIGHEST_SALES DESC
    LIMIT 5
    ;
    
SELECT 
		category,
        count(DISTINCT category ) AS UNQUE
        FROM retail_sales
        GROUP BY category
;	
        
-- Write a SQL query to create each shift and number of orders (Example Morning <12, Afternoon Between 12 & 17, Evening >17):        	
        
    
 
 WITH hourly_sale
AS
(
SELECT *,
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END as shift
FROM retail_sales
)
SELECT 
    shift,
    COUNT(*) as total_orders    
FROM hourly_sale
GROUP BY shift   
    
 -- END OF THE PROJECT --   
    
    
    

    
        
        
        
    
