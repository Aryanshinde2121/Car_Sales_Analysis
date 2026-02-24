use carsale;


describe cars;

select * from cars;

#Total Sales Revenue (KPI Card)

SELECT 
    SUM(sale) AS total_revenue
FROM cars;


# Total Cars Sold (Quantity KPI):

SELECT 
    SUM(quantitysold) AS total_cars_sold
FROM cars;

select * from cars;
#  Sales Trend by Date

SELECT 
    DATE(dateofsale) AS sale_date,
    SUM(sale) AS daily_sales
FROM cars
GROUP BY DATE(dateofsale)
ORDER BY sale_date;


# Sales by Country

SELECT 
    country,
    SUM(sale) AS total_sales
FROM cars
GROUP BY country
ORDER BY total_sales DESC;


# Top 5 Car Makes by Revenue

SELECT 
    carmake,
    SUM(sale) AS total_sales
FROM cars
GROUP BY carmake
ORDER BY total_sales DESC
LIMIT 5;


# Sales by Car Type:

SELECT 
    cartype,
    SUM(sale) AS total_sales
FROM cars
GROUP BY cartype
ORDER BY total_sales DESC;


# Payment Method Preference:

SELECT 
    paymentmethod,
    COUNT(*) AS total_transactions
FROM cars
GROUP BY paymentmethod
ORDER BY total_transactions DESC;


# Gender-wise Sales Analysis:

SELECT 
    gender,
    SUM(sale) AS total_sales
FROM cars
GROUP BY gender;


# Average Car Price by Country:

SELECT 
    country,
    ROUND(AVG(price), 2) AS avg_car_price
FROM cars
GROUP BY country
ORDER BY avg_car_price DESC;


# Top 5 Customers by Purchase Value:

SELECT 
    customername,
    SUM(sale) AS total_spent
FROM cars
GROUP BY customername
ORDER BY total_spent DESC
LIMIT 5;



