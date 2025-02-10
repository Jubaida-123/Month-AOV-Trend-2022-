use sales;
select * from order_detail;

/*2. Average Order Value (AOV) Over Time (Monthly Trend) Scenario: The Sales Team wants to track how the Average Order Value (AOV) has changed month over month in 2022.
 Requirements: • Create a line chart that shows the AOV trend over time. • Use the formula SUM(after_discount) / COUNT_DISTINCT(id) to calculate AOV. 
 • Filter the data for the year 2022 and group by month. • Display the AOV trend for each month. Key Features to Use: 
 • order_date (for time-based grouping) • after_discount • id.*/
 
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS Month,
    SUM(after_discount) / COUNT(DISTINCT id) AS AOV
FROM order_detail
WHERE YEAR(order_date) = 2022
GROUP BY month
ORDER BY month;