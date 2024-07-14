create table annual(
	Year int,
	Industry_aggregation varchar,
	Industry_code int,
	Industry_name varchar,
	Units varchar,
	Variable_code varchar,
	Variable_name varchar,
	Variable_category varchar,
	Value int
)

select * from annual

copy annual from 'E:\DA - 8\TASK\task 4/annual-enterprise-survey-2023-financial-year-provisional5.csv' DELIMITER ',' CSV header

select * from annual

-------------
select * from annual


1) count the total number of industry code.
	
select count(*) as total_industry_code from annual

2) List all unique years.

SELECT DISTINCT Year FROM annual

select * from annual


3)Find the maximum and minimum values of 'Value'.

SELECT MAX(Value) AS max_value, MIN(Value) AS min_value FROM annual

select * from annual


4)Find the average 'industry_code' grouped by 'Year'.

SELECT Year, AVG(industry_code) AS avg_industry_code FROM annual GROUP BY Year

select * from annual


5)Count the number of records for each 'Industry Code'.

SELECT Industry_code, COUNT(*) AS num_records FROM annual GROUP BY Industry_code

select * from annual


6)List of top 5 years with the highest 'Value'.

SELECT Year, SUM(Value) AS value FROM annual GROUP BY Year ORDER BY value DESC LIMIT 5

select * from annual


7)Find the average 'Value' group by 'Year'.

SELECT Year, AVG(Value) AS avg_value FROM annual GROUP BY Year

select * from annual


8)Find the sum of 'Value' for each 'Year' and 'Industry Code'.

SELECT Year, Industry_code, sum(Value) AS value from annual GROUP BY Year, Industry_code

select * from annual


9)Find the minimum 'Value' for each 'Year' and 'Industry Code'.

SELECT Year, Industry_code, MIN(Value) AS min_value FROM annual GROUP BY Year, Industry_code

select * from annual


10)List all unique Variable Categories.

SELECT DISTINCT Variable_Category FROM annual

select * from annual

	






















