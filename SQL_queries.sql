-- 1. getting the list of 10 stocks with Highest Volume

SELECT * 
FROM stock_data
ORDER BY Volume DESC 
LIMIT 10;

-- 2. getting the list of 10 stocks with Lowest Volume

SELECT * 
FROM stock_data 
ORDER BY Volume ASC 
LIMIT 10;

-- 3. getting the Highest Open price of apple

SELECT * 
FROM stock_data 
WHERE Name like '%aapl%' 
ORDER BY Open DESC 
LIMIT 1;

-- 4. getting the Lowest Open price of apple

SELECT Open 
FROM stock_data 
WHERE Name like '%aapl%' 
ORDER BY Open ASC 
LIMIT 1;

-- 5. getting the Lowest Low price of apple

SELECT * 
FROM stock_data 
WHERE Name like '%aapl%' 
ORDER BY Low ASC 
LIMIT 1;

-- 6. getting the average price in all segments(olhc) of apple

SELECT avg(Open), avg(Low), avg(High), avg(Close) 
FROM stock_data 
WHERE Name like '%aapl%';

-- 7. getting the Maximum price in all segments(olhc) of apple

SELECT MAX(Open), MAX(Low), MAX(High), MAX(Close) 
FROM stock_data 
WHERE Name like '%aapl%';

-- 8. getting the Minimum price in all segments(olhc) of apple

SELECT MIN(Open), MIN(Low), MIN(High), MIN(Close) 
FROM stock_data 
WHERE Name like '%aapl%';

-- 9.  Find the Highest closing price in stock_data

SELECT MAX(Close) as Highest_closing_price 
FROM stock_data;

-- 10.   Identify the Lowest Opening price in stock_data
 
SELECT MIN(Open) as Lowest_Opening_price 
FROM stock_data;
 
-- 11.  Calculate the average Volume in stock_data
 
 SELECT avg(Volume) as 'average Volume' 
 FROM stock_data;
 
-- 12.  Get the number of unique stock symbols in stock_data
 
SELECT count(distinct Name) as unique_stock_symbols 
FROM stock_data;
 
-- 13.  Find the most volatile stock by calculating the difference between High and Low in stock_data
 
SELECT MAX(High-Low) as volatile_stock 
FROM stock_data;
 
-- 14. Finding the most volatile stocks Name first approach by calculating the difference between High and Low in stock_data
 
SELECT Name 
FROM stock_data
WHERE High-Low = 138.26;
 
-- 15. Finding the most volatile stocks Name second approach by calculating the difference between High and Low in stock_data

SELECT Name, MAX(High - Low) AS MAX_volatility
FROM stock_data
GROUP BY Name
ORDER BY MAX_volatility DESC
LIMIT 1;

-- 16.   Retrieve the Date with the Highest trading Volume in stock_data
 
SELECT Date, MAX(Volume) AS Highest_Volume FROM stock_data GROUP BY Date ORDER BY Date DESC LIMIT 1;
 
-- 17.   Calculate the average closing price for each stock symbol in stock_data
 
SELECT Name, AVG(Close) AS avg_closing_price
FROM stock_data
GROUP BY Name;
 
 -- 18.  Identify the days with the Highest trading Volume for a specific stock (e.g., AAPL) in stock_data
 
SELECT Date, Volume
FROM stock_data
WHERE Name = 'AAPL'
ORDER BY Volume DESC
LIMIT 10;

-- 19.  Analyze the performance of a stock over time (e.g., AAPL) in stock_data
 
SELECT Date, Close
FROM stock_data
WHERE Name = 'AAPL'
ORDER BY Date;

-- 20.  Calculate the average closing price by year in stock_data
 
SELECT YEAR(Date) AS year, AVG(Close) AS avg_closing_price
FROM stock_data
GROUP BY year;
