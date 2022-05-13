--INS UP DEL

--INSERT

--von Tabelle zu Tabelle (die evtl noch gar nicht existiert)

SELECT     INTO TABELLE FROM ...

SELECT * 
into BestUnter100FR
FROM ORDERS WHERE freight < 100

select * from BestUnter100FR

select freight *1 from orders

--naja... alle Spalten müssen einen Namen haben zB bei F()  , Math Operation

--Kopiere alle Kunden aus Germany in eine Tabelle KDGer

select * 
into kdger
from customers where country = 'Germany'

---aten aus einer Tabelle in eine bestehden
insert into kdger
select * from customers where country = 'UK'

--füge alle aus Italy zu der kdger hinzu..alls am Stück ausführen

insert into kdger 
select * from customers where country = 'Italy'

----geht das immer?....  gleich viele Spalten, Spalten müssen (datentyp) zueinander kompatibel
--gleiche reihenfolge

insert into kdger (customerid,	country,		 city,			CompanyName)
select					  'ppedv',    'Germany',   'Berlin',		 'Fa ppedv AG'

select * from kdger


--UPDATE

UPDATE TABELLE SET SP = WERT

update customers set city = 'PARIS' ---ohohoho  alle sind in Paris

UPDATE TABELLE SET SP = WERT
				WHERE SP = Wert

update customers set city = 'PARIS' ---ohohoho  alle sind in Paris
where customerid = 'ALFKI'

select * from customers where customerid = 'ALFKI'

--aktualsieren den BLAUS .. und setze die Stadt auf BONN

select * from customers where customerid = 'BLAUS'

update customers set city = 'Bonn' where customerid = 'BLAUS'

--TIPP

begin tran
--INS UP DEL INS UP UP DEL 
update customers set city = 'Bonn' where customerid = 'BLAUS'

rollback  --wenn falsch dann das
--commit --wenn ok


select * from orders
select * from [Order Details]

---Wir erhöhen der Versandpreis um 10% bei dem Produkt 10

---suche alle Bestellungen heraus bei denen das Produkt nr 10 verkauft wurde

update orders set freight = freight *1.1
--select 	o.orderid, freight , productid
from orders o inner join [Order Details] od on o.orderid = od.orderid
where
			productid=10

			--UPDATE 
			--zuerst den SELECT 
			--FROM in nächste Zeile
			--Select auskommentieren
			--update darüber


--aktualisieren die Frachtkosten für alle deutschen Kunden um + 20%
--alle Kunden aus DE und deren Bestellungen 

select * from customers where country = 'Germany' --11

update orders set freight = freight *1.2
--select * 
from customers c inner join orders o on c.CustomerID=o.CustomerID where c.country = 'Germany' --122


--DELETE  
--kdger

select * from kdger

DELETE FROM TABELLE WHERE SP = WERT
DELETE TABELLE WHERE SP = WERT

delete from kdger where customerid = 'ALFKI'

--Lösche alle Kunden aus kdger , die mehr als 1000 Frachtkosten in orders haben 

delete from customers
--select k.customerid
from customers  k inner join orders o on k.customerid =o.customerid where freight < 100-- order by 1

--select ergibt 33 Zeilen , aber der delete nur 13.. da der Kunde einfach mehr Bestellungen hat, die man mit dem Sleect auch anzeigt









