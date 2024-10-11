/*--Exercise 1:
--Create a query to list out the following columns from the tblEvent table, 
--with the most recent first (for which you'll need to use an ORDER BY clause):

--The event name
--The event date
USE WorldEvents;

SELECT 
	EventName,
	EventDate 
FROM 
	tblEvent
ORDER BY 
	EventDate DESC;
*/
/*--Exercise 2: 
--Write a query to show the first 5 events (in date order) from the tblEvent table
There are a few things to notice about this:

You should give the columns aliases (What and Details in this case);
Use SELECT TOP 5 to limit the results to 5 rows;
Even though you're sorting by the event date, it doesn't have to be included in your results.

SELECT
	TOP 5 EventName AS What,
	EventDetails AS Details
FROM
	tblEvent
ORDER BY
	EventDate
*/
/*Exercise 3:
Create a query which uses two separate SELECT statements to show the first and last 2 events in date order from the tblEvent table


SELECT TOP 2  
	EventName AS 'What',
	EventDate AS 'When'
FROM
	tblEvent
ORDER BY
	EventDate

SELECT TOP 2  
	EventName AS 'What',
	EventDate AS 'When'
FROM
	tblEvent
ORDER BY
	EventDate DESC
*/
/*Exercise 4:
Create a query to list out the id number and name of the last 3 categories from the tblCategory table in alphabetical order:

SELECT TOP 3
	CategoryID,
	CategoryName
FROM
	tblCategory
ORDER BY
	CategoryName DESC
*/
/*Exercise 5:
Create a query to select the columns shown in the image below from the Album table. Sort the results in descending order of US sales

USE Music_01

SELECT TOP 5 with ties
	Title,
	Release_date,
	[US_sales_(m)],
	Wiki_URL
FROM
	Album
ORDER BY [US_sales_(m)] DESC

SELECT TOP 3 WITH TIES
	Title,
	Release_date,
	Wiki_URL
FROM
	Album
ORDER BY
	Release_date DESC

SELECT TOP 10 --WITH TIES
	Title,
	Album_mins,
	Album_secs,
	Wiki_URL
FROM
	Album
ORDER BY 
	Album_mins DESC,Album_secs DESC

SELECT TOP 10 WITH TIES
	Title,
	Album_mins,
	Album_secs,
	Wiki_URL
FROM
	Album
ORDER BY 
	Album_mins,Album_secs
*/
/*Exercixe 6:
Write a query to return the columns shown in the image below from the Venue table

SELECT 
	Venue,Capacity,Opening_date,Closing_date,Demolition_date,Construction_cost_$m,Address
FROM 
	Venue

SELECT TOP 5
	Venue,Capacity,Opening_date,Closing_date,Demolition_date,Construction_cost_$m,Address
FROM
	Venue
WHERE Capacity IS NOT NULL
ORDER BY 
	Capacity DESC
*/
/*Exercise 7:
Write a SELECT statement to return the columns shown in the image below from the Artist table

SELECT
	Artist AS 'Artist Name',
	Artist_type 'Type of Artist',
	Year_formed 'Year Formed'
FROM
	Artist
ORDER BY
	[Year Formed] DESC,Artist
*/