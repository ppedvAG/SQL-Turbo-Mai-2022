use northwind;

--SHOP : Kunden, Bestellungen,  Bestellpositionen, Produkte, Angestellte
--         Customers   Orders , order details   , Products, Employees


select  Spalten  from Tabelle

select customerid from customers

--alle Spalten sehen:
select * from customers

--Tipp: zu erst der Stern, dann sp�ter durch Spalten ersetzen
select CustomerID,City, Country from customers

--noch leichter: Aliasname f�r die Tabelle
select c.CustomerID, c.City,c.CompanyName,c.Country from customers c

select o.CustomerID, o.OrderID, o.OrderDate, o.Freight from orders o

select o.orderid, o.orderdate, o.ShippedDate, o.RequiredDate, datediff from orders o

--welche Lieferung sind zu sp�t angekommen.. zu sp�t??
-- datediff(dd, Datum1, Datum2 ) -- + = zu sp�t
select datepart(yy,orderdate), orderid, orderdate, customerid from orders

--erg�nze folgende Abfrage durch die Infi wieviel Tage zu sp�t
select o.orderid, o.orderdate, o.ShippedDate, o.RequiredDate
			, datediff 
from orders o

select 
			o.orderid, o.orderdate,o.ShippedDate, o.RequiredDate,
			datediff(dd,o.RequiredDate, o.ShippedDate) as Lieferverzug
from orders o

--reduziert auf die notwendige Info
select 
			o.orderid, o.orderdate--o.ShippedDate, o.RequiredDate,
			,datediff(dd,o.RequiredDate, o.ShippedDate) as Lieferverzug
from orders o

-hmm--- welche waren zu sp�t

--wenn wir sortieren

select Spa, spb from tabelle 
order by spa, spb

select Sp1, Sp2 from tab
order by
			Sp1 asc, --aufsteigend
			Sp2 desc --absteigend

select * from orders order by freight --ohne Angabe von asc oder desc = asc

select * from orders order by freight desc--ohne Angabe von asc oder desc = asc

select * from orders order by orderid, freight --macht null komma null sinn weil jede orderdi nur 1mal vorkommt

---Ausgabe der Lieferverz�ge .. sortiert nach Lieferverzug .. zu sp�t ganz oben...







--

select 
			o.orderid, o.orderdate--,--o.ShippedDate, o.RequiredDate
			,datediff(dd,o.RequiredDate, o.ShippedDate) as Lieferverzug
from orders o
order by Lieferverzug desc

--Tipp f�r Faule--mit Zahlen sortieren 2,3 zweite und  dritte spalte

select freight, orderid, orderdate, customerid from orders
order by 2,3



select Sp1, Sp2, f(), *, Zahl, 'TXT', Mathe
from tabelle
order by Sp asc |desc


select  100, 'TXT' from orders

--wof�r.. zB Freight = netto-- brauchen aber Brutto
select orderid , freight from orders

select orderid , freight , (freight *1.19) as Brutto   from orders


