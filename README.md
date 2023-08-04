# sql-queries
# Stock Data SQL Exploration Project

This project involves exploring a stock market dataset using SQL queries. The dataset contains historical stock data for various companies listed on the S&P 500 index.

## Table of Contents
- [Introduction](#introduction)
- [Dataset](#dataset)
- [Project Steps](#project-steps)
- [SQL Queries](#sql-queries)
- [Findings](#findings)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project aims to demonstrate the capabilities of SQL in exploring and analyzing a real-world dataset. By querying the stock market data, we gain insights into stock performance, volatility, and other trends.

## Dataset

The dataset used in this project is the "S&P 500 stock data" dataset, which contains historical stock data for companies listed on the S&P 500 index. The dataset includes information about stock prices, trading volume, and company names.

## Project Steps

1. **Dataset Exploration:** Load the dataset into a MySQL database and create a table to store the data.

2. **Data Exploration:** Run SQL queries to explore various aspects of the dataset, such as calculating average prices, identifying volatile stocks, and analyzing trading volume.

3. **Findings:** Document the insights gained from the data exploration process.

## SQL Queries

Here are some examples of SQL queries used in this project:
- [SELECT YEAR(Date) AS year, AVG(Close) AS avg_closing_price FROM stock_data GROUP BY year;](#): Calculate the average closing price by year in stock_data.
- [SELECT Date, Volume FROM stock_data WHERE Name = 'AAPL' RDER BY Volume DESC LIMIT 10;](#): Identify the days with the Highest trading Volume for a specific stock (e.g., AAPL) in stock_data.
- [SELECT count(distinct Name) as unique_stock_symbols FROM stock_data;](#): Get the number of unique stock symbols in stock_data.

Feel free to explore the [SQL_queries.sql](SQL_queries.sql) file for all queries used in this project.

## Findings

Through the exploration of the stock market dataset using SQL queries, several interesting findings and insights were uncovered:

1. **Most Volatile Stocks:** By calculating the difference between the high and low prices for each stock, we identified that [AMZN(Amazon)] is the most volatile, with a maximum volatility of [max_volatility]. This suggests significant price fluctuations within the given period.

2. **Average Closing Price Analysis:** Upon calculating the average closing price for each stock, we observed that [A] had the highest average closing price, indicating strong performance over the dataset's timeframe.

3. **Trading Volume Patterns:** Analyzing the trading volume over time revealed that [AAPL]'s trading volume experienced a significant spike on [2014-01-28], possibly due to [January 27, 2014—Apple® today announced financial results for its fiscal 2014]. This indicates a heightened interest in trading during that period.

4. **Yearly Performance Overview:** By grouping the data by year and calculating the average closing price for each year, we found that [2018] experienced a noticeable increase in stock prices, potentially driven by [economic or industry factors].

These findings provide valuable insights into the behavior and performance of various stocks within the dataset. Further analysis and visualization could offer deeper understanding and potential investment opportunities.


## Usage

To replicate this project on your local machine:

1. Download the dataset from [S&P 500 stock data]([link-to-dataset](https://www.kaggle.com/camnugent/sandp500)).
2. Set up a MySQL database and load the dataset into a table.
3.
CREATE DATABASE stock_market;

-- Use the newly created database: 

USE stock_market;

-- Create a new table in your MySQL database to match the columns in the CSV file:

CREATE TABLE stock_data (
    Date DATE,
    Open DECIMAL(10, 2),
    High DECIMAL(10, 2),
    Low DECIMAL(10, 2),
    Close DECIMAL(10, 2),
    Volume BIGINT,
    Name VARCHAR(10)
);

-- Load the data from the CSV file into the table:

LOAD DATA INFILE 'path_to_csv_file' INTO TABLE stock_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

-- if the above query gives error of --secure-file-priv  then use this method

-- MySQL Workbench: If you're using MySQL Workbench, you can use the "Table Data Import Wizard" to load data from a CSV file.

4. Run the SQL queries provided in [SQL_queries.sql](SQL_queries.sql) to explore the data.

## Contributing

Contributions to enhance or extend this project are welcome! Feel free to fork this repository, make your changes, and submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
