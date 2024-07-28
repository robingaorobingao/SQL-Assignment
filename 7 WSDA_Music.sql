/*
Created by Robin Gao on 28 July 2024
Description: Create a mailing list of US customers using various functions;
	calculate the ages of all employees;
	aggregate all-time global sales;
	create report with adjusted postal codes in uniform format abd customer full names
*/

/*
-- exercise

SELECT
	-- upper(FirstName) as [First name all uppercase],
	-- lower(LastName) as [Last name all lowercase],
	-- Address,
	-- FirstName ||' '|| LastName ||' '|| Address ||', '|| City ||' '|| State ||' '||  PostalCode as [Mailing Address],
	-- length(PostalCode),
	-- substr(PostalCode, 1, 5) as [5-digit postal code],
	
	-- strftime('%Y-%m-%d', BirthDate) as [Birthdate no timecode],
	-- strftime('%Y-%m-%d', 'now') - strftime('%Y-%m-%d', BirthDate) as Age
	
	SUM(Total) as [Total sales],
	round(AVG(Total), 2) as [Average sales], -- nested function for rounding to two decimal points
	MAX(Total) as [Maximum sales],
	MIN(Total) as [Minimum sales],
	COUNT(*) as [Sales count]

FROM
	-- Customer
	-- Employee
	Invoice
	
-- WHERE
	-- Country = "USA"
	
*/

-- quiz

SELECT
	FirstName ||' '|| LastName as CustomerFullName,
	substr(PostalCode, 1, 5) as StandardizedPostalCode

FROM
	Customer as c
	
WHERE
	c.Country = "USA"
	
ORDER BY
	CustomerFullName
