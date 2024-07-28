/*
Created by Robin Gao on 28 July 2024
Description: Calculate average invoice totals by cities that start with L using grouping in SQL;
	Calculate average invoice totals greater than $5.00 for cities that start with B;
	Calculate average invoice totals by country and city;
	Report average spending amount of customers in each city
*/

/*
-- exercise

SELECT
	BillingCountry,
	BillingCity,
	round(avg(total), 2) as [Average invoice total]

FROM
	Invoice

-- WHERE
	-- BillingCity LIKE 'B%'
	
GROUP BY
	BillingCountry,
	BillingCity
	
HAVING
	avg(total) > 5

ORDER BY
	BillingCountry
	
*/

-- quiz

SELECT
	BillingCity as City,
	round(avg(total), 2) as AverageSpending

FROM
	Invoice as i
	
GROUP BY
	BillingCity
