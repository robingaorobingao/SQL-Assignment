/*
Created by Robin Gao on 28 July 2024
Description: This query uses JOINs to access multiple tables;
	display employees responsible for the 10 highest individual sales;
	report a list of each customer along with assigned support representative
*/

/*
-- exercise

SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
	
FROM
	Invoice AS i

INNER JOIN
	Customer AS c

ON
	i.CustomerId = c.CustomerId -- table.field

INNER JOIN
	Employee as e
	
ON
	c.SupportRepId = e.EmployeeId

ORDER BY
	i.total DESC
	
LIMIT 10

*/

-- quiz

SELECT
	e.FirstName as "SupportRepFirstName",
	e.LastName as "SupportRepLastName",
	c.FirstName as "CustomerFirstName",
	c.LastName as "CustomerLastName"
	
FROM
	Customer as c
	
INNER JOIN
	Employee as e
	
ON
	c.SupportRepId = e.EmployeeId

ORDER BY
	e.LastName, c.LastName
