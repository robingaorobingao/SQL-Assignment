/*
Created by Robin Gao on 28 July 2024
Description: This query displays customers who purchased two songs at $0.99 each;
	invoices between $1.98 and $5.00;
	invoices exactly $1.98 and $3.96;
	invoices billed to Brussels, Orlando, and Paris;
	invoices billed to cities that start with B;
	invoices billed to cities with a B anywhere in its name;
	invoices billed on 2010-05-22 00:00:00;
	invoices billed after 2010-05-22 and have a total of less than $3.00;
	invoices whose billing city starts with P or D;
	invoices greater than $1.98 from cities that start with P or D;
	implements if/then conditions to categories sales;
	categorizes tracks by price
*/

/*
-- exercise

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total < 2.00 THEN 'Baseline Purchase'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'Low Purchase'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'Target Purchase'
	ELSE 'Top Performer'
	END AS PurchaseType
	
FROM
	Invoice
	
WHERE
	-- total = 1.98
	-- total BETWEEN 1.98 AND 5.00
	-- total IN (1.98, 3.96)
	-- BillingCity IN ('Brussels', 'Orlando', 'Paris')
	-- % I don't care what comes after B
	-- BillingCity LIKE 'B%'
	-- % I don't care what comes before B
	-- BillingCity LIKE '%B%'
	-- InvoiceDate = '2010-05-22 00:00:00'
	-- DATE(InvoiceDate) > '2010-05-22' AND total < 3.00
	-- (BillingCity LIKE 'P%' or BillingCity LIKE 'D%') AND total > 1.98
	PurchaseType = 'Top Performer'

ORDER BY
	InvoiceDate
*/
-- quiz

SELECT
	Name AS "Track Name",
	Composer,
	UnitPrice AS Price,
	CASE
	WHEN UnitPrice <= 0.99 THEN 'Budget'
	WHEN UnitPrice BETWEEN 1.00 AND 1.49 THEN 'Regular'
	WHEN UnitPrice BETWEEN 1.50 AND 1.99 THEN 'Premium'
	ELSE 'Exclusive'
	END AS PriceCategory
	
FROM
	Track as t
	
ORDER BY
	UnitPrice
