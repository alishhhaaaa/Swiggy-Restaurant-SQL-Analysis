CREATE DATABASE swiggy_analysis;
USE swiggy_analysis;
USE swiggy_analysis;
SELECT * FROM swiggy LIMIT 5;

USE swiggy_analysis;

-- Basic: Total restaurants
SELECT COUNT(*) as Total_Restaurants FROM swiggy;

-- Basic: Cities in dataset
SELECT DISTINCT City FROM swiggy;

-- Basic: Average price by city
SELECT City, ROUND(AVG(Price), 2) as Avg_Price 
FROM swiggy 
GROUP BY City 
ORDER BY Avg_Price DESC;

-- Intermediate: Top 10 highest rated restaurants
SELECT Restaurant, City, `Avg ratings`, Price 
FROM swiggy 
ORDER BY `Avg ratings` DESC 
LIMIT 10;

-- Intermediate: Most popular food types
SELECT `Food type`, COUNT(*) as Count 
FROM swiggy 
GROUP BY `Food type` 
ORDER BY Count DESC 
LIMIT 10;

-- Intermediate: Restaurants with rating above 4.5
SELECT Restaurant, City, `Avg ratings`, Price 
FROM swiggy 
WHERE `Avg ratings` > 4.5 
ORDER BY `Avg ratings` DESC;

-- Advanced: Best value restaurants (high rating, low price)
SELECT Restaurant, City, Price, `Avg ratings`,
RANK() OVER (ORDER BY `Avg ratings` DESC, Price ASC) as Value_Rank
FROM swiggy
WHERE `Avg ratings` > 4.0;

-- Advanced: Average delivery time by area
SELECT Area, City, 
ROUND(AVG(`Delivery time`), 2) as Avg_Delivery_Time,
COUNT(*) as Total_Restaurants
FROM swiggy
GROUP BY Area, City
ORDER BY Avg_Delivery_Time ASC;

-- Advanced: Price segmentation
SELECT 
CASE 
    WHEN Price < 200 THEN 'Budget'
    WHEN Price BETWEEN 200 AND 500 THEN 'Mid Range'
    WHEN Price > 500 THEN 'Premium'
END as Price_Segment,
COUNT(*) as Count,
ROUND(AVG(`Avg ratings`), 2) as Avg_Rating
FROM swiggy
GROUP BY Price_Segment;