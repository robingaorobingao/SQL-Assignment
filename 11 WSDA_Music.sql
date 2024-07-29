/*
Created by Robin Gao on 28 July 2024
Description: DML | Inserting, updating, and deleting data
*/

-- exercise

/*
INSERT into
	Artist(Name) -- table(field)
	
VALUES('Bob Marley')

UPDATE
	Artist

SET
	Name = 'Damien Marley'
	
WHERE
	ArtistId = 276
*/

DELETE FROM
	Artist

WHERE
	ArtistId = 276
