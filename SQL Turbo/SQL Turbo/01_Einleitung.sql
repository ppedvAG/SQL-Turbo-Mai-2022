--immer die DB angeben
-- use dbname

--markieren! und ausf�hren..  es wird immer der markierte Quellcode ausgef�hrt
use master

use northwind;

--Kommentare

--  2 minuszeichen sind ein KOMMENTAR ab den 2 Minuszeichen bis zum Ende der Zeile

select 1001--hallo Wissam! select 100
select 200


/*
mehr Zeilen
als Kommentar

select 100
,,
*/

/*  lkasjdlkjdlkasjdlkasjdlkasjdlk */


--Quellcode sch�n formatieren, weil man schneller fehler findet und der Code l��t sich besser lesen

select		c.customerid, companyname, country, city 
from		customers c inner join orders o
				on c.CustomerID=o.CustomerID
where		country = 'UK'


select		c.customerid, companyname, country, city rom		customers c inner join orders o				on c.CustomerID=o.CustomerI where		country = 'UK'



select		c.customerid, 
		companyname, country, city 
from		customers c inner join 
orders o
				on c.CustomerID=

						o.CustomerID
where		country
	= 
'UK'