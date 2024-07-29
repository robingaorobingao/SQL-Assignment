/*
Created by Robin Gao on 28 July 2024
Description: Implementing VIEW and JOIN
*/

-- exercises

/*
CREATE View V_AvgTotal as

SELECT
	avg(total) as [Average Total]
	
FROM
	Invoice
	
-- DROP View V_AvgTotal
*/

/*
CREATE View V_Tracks_InvoiceLine as

SELECT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
	
FROM
	InvoiceLine as il
	
INNER JOIN
	Track as t
	
ON
	il.TrackId = t.TrackId
*/
