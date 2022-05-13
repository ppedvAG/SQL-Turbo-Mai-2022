SELECT  
			Spalten1, Spalten2,
			100, 'TXT',
			F()  Mathe  as Aliasname
FROM TABELLE T
WHERE 
				T.Spalte1 = 10			AND
				T-Spalte2 like 'A%'	 OR
				T-Spalte3 < 100
ORDER BY  Spalte1, Aliasname asc|desc

---JOIN

-- INNER JOIN (>90%)    RIGHT JOIN   LEFT JOIN   CROSS JOIN   FULL JOIN

/*  INNER JOIN : nur die Werte raus, die in beiden Tabellen virhanden sind
TABELLE A
SP1   SP2   Sp3
1      A       2
2      A        3
3      B         10
4      C         5
5      D         7


Tabelle B
SP1   SP2   Sp3
1      A       er
2      A        erd
3      C         sds
4      D         sd
5      F         dssd

*/
select * from customers
select * from orders

select 
				c.CustomerID, o.CustomerID, c.CompanyName, --Kundenspalten
				o.OrderID, o.OrderDate, o.Freight                      ---Bestellinfos
from customers c inner join orders o ON c.CustomerID=o.CustomerID  --JOIN


select * from  orders --Bestellungen
select * from employees --Angestellten  -- Beziehung über Employeeid

--INFOS:   OrderID, Employeeid, OrderDate, freight, Lastname, Firtname 

--Liste allle   OrderID, Employeeid, OrderDate, freight, Lastname, Firtname 

select 
			o.orderid, o.OrderDate, o.freight ,						--alle Bestdaten
			e.employeeid, e.lastname, e.firstname				-- alle AngInfos
from    orders o inner join employees e on o.EmployeeID=e.EmployeeID


--keiner sagt: es muss immer die ID sein

select * from employees
select * from customers

--es gibt keine direkte! Bezihung zw Kunden und Angestellten
--wir wollen die Kundenbeziehung verbessern.... sehr geringe Resiekosten.. 
--IDEE. wir suchen allen Angestellten und Kunden, die in der selben Stadt wohne

--Ausgabe: Comanyname, City , City, Lastname Employees und customers



select 
				c.CompanyName, c.city,
				e.lastname,e.city
from customers c inner join Employees e on c.City = e.city


--LEFT RIGHT JOIN  ist das selbe


select *
from tabelle A left join tabelle B on a.sp = b.sp
---- links von from 

--dann ist der right join folgendes
select *
from tabelle B right join tabelle A on a.sp = b.sp

--welche Kunde haben nichts bestellt (left JOIN)
-- Ergänzung.. die Suche nach null
--alle Kunden und Bestellung via Left Join --Anzahl der Zeilen....?

select 
	*
from customers c left join orders o on c.CustomerID=o.CustomerID --832 --2 Kunden, die nicht bestellt haben

select 
	*
from customers c inner  join orders o on c.CustomerID=o.CustomerID --830


select 
	c.companyname, c.CustomerID, o.orderid
from customers c left join orders o on c.CustomerID=o.CustomerID --832 --2 Kunden, die nicht bestellt haben
where 
			orderid is NULL


--FULL JOIN   (Kombiniert RIGHTund LEFT)

--wir bekommen defintiv.. alle Daten von Links und alle von rechts 


--Gibt es Bestellungen, die keine passenden Kundeninformationen in Customers haben?
--RIGHT
select 
			c.CustomerID, o.customerid, o.OrderID
from    customers c  right join orders o  on c.CustomerID=o.CustomerID --830 .. es wird keine verweaiste Bestellung geben
where c.CustomerID is null


--LEFT..das gleich in LEFT

select 
			c.CustomerID, o.customerid, o.OrderID
from   orders o   left join   customers c on c.CustomerID=o.CustomerID --830 .. es wird keine verweaiste Bestellung geben
where c.CustomerID is null


---Jetzt  brauchen wir mehr Tabellen

--welches Produkt kaufte der Kunde
select * from orders
select * from [Order Details]
select * from products
/*

Customers  --(customerid) --orders  -- (orderid) -- order details  ---(productid)---Product
orders --(employeeid) --employees

*/

SELECT 
*
FROM    TABELLE A inner join TABELLE B ON A..sp = B.SP
								inner join TABELLE C ON c.sp =  B.sp
								inner join TABELLE  D   ON D.sp =A.sp
								inner ...
								left
								right 
where
order by 

select 
				c.CompanyName, c.country,
				o.orderid, o.OrderDate, o.freight,
				e.lastname
from customers c inner join orders o on c.customerid = o.customerid
							 inner join employees e on e.employeeid =o.employeeid

	/* welcher Kunde hat welches Produkt gekauft Firma, produktname=

Customers  --(customerid) --orders  -- (orderid) -- order details  ---(productid)---Product
orders --(employeeid) --employees

*/
select  
			c.CompanyName, p.ProductName
			from 
						customers c inner join orders o						on c.CustomerID	=	o.CustomerID
										    inner join [Order Details] od		on od.orderid		=	o.orderid
											inner join products p					on p.ProductId		=	od.ProductID


