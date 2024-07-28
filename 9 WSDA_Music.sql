/*
Created by Robin Gao on 28 July 2024
Description: Gather data about all invoices lower than average;
	Evaluate how each individual city is performing against global average sales;
	Identify which tracks are not selling;
	Identify tracks that have never been sold
*/

-- exercise
	
/* SELECT
	-- InvoiceDate,
	-- BillingAddress,
	BillingCity,
	avg(total) as [City average],
	(select avg(total) from invoice) as [Global average]
	
FROM
	Invoice
	
-- WHERE
	-- total < (select avg(total) from invoice)

GROUP BY
	BillingCity
	
ORDER BY
	-- total DESC
	BillingCity
*/
	
/*
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
	
FROM
	Invoice
	
WHERE
	InvoiceDate in
	
(SELECT
	InvoiceDate
	
FROM
	Invoice
	
WHERE
	InvoiceId in (251, 252, 254))
*/

/*
SELECT
	TrackID,
	Composer,
	Name

FROM
	Track
	
WHERE
	TrackId not in

(SELECT
	DISTINCT
	TrackId
	
FROM
	InvoiceLine
	
ORDER BY
	TrackID)
*/

-- quiz

SELECT
	t.TrackId as [Track ID],
	t.Name as [Track Name],
	t.Composer,
	g.Name as Genre

FROM
	Track as t
	
LEFT JOIN
	Genre as g
		
ON
	t.GenreId = g.GenreId

WHERE
	t.TrackId not in

(SELECT
	DISTINCT
	TrackId
	
FROM
	InvoiceLine as Ii)
	
ORDER BY
	t.TrackId
