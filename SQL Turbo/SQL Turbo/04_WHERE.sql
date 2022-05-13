--Das WHERE .. Daten filtern!!

SELECT 
				SP1, Sp2,
				*
				Mathe
				F() as Alias
				Zahl, TXT
FROM	TABELLE T 
WHERE 
				SP1 = Wert
				SP1 >    <    <=     >=  Wert
				SP1  !=    <> Wert .. das soll es nicht sein
				SP1  LIKE   das Einzige , was wildcard beherrscht:   %   beliebig viele Zeichen    _  steht für ein Zeichen genau
ORDER BY Sp1 , Alias asc | desc

select * from orders
where 
			orderid = 10248

--suche alle Bestellunge heraus, die weniger als 100 Frachtkosten haben ( freight)
select * from orders
where 
			freight < 100
--order by freight desc --643 Zeilen

--Suche alle Kunden heraus, die in UK leben  (country in Customers)
select * from customers
where country = 'UK'


--LIKE

--alle Kunden, die in einem Land leben ,das mit U beginnt

select * from customers
	where
			country < 'D' --alle die A B oder C beginnen

select * from customers
		where country like 'U%' 

--suche alle Kunden, die einem Land mit U wohnen-- das U kann irgendwo im Land vorkommen
--zb Portugal
select * from customers
where 
			country = '%u%' --30 

select * from customers
where 
			country like '%u%' --30 

			--gebe alle Zeilen der Order details aus

select * from order details

select * from orders o 

select * from [order details] --[]

--suche alle Firmen, die ein % im Namen haben Companyname aus Customers

select * from customers
where companyname like '%%%' --alle das gleiche wie ein %

select * from customers
where companyname like '%[%]%' --[] steht für ein Zeichen ..also keine Wildcard mehr  

--Suche alle Kunden, deren Firmenname mit A B C oder D beginnt
--Companyname aus customers

select * from customers 
where
		companyname like '[ABCD]%'

select * from customers 
where
		companyname like '[A-D]%'

select * from customers 
where
		companyname < 'E' and companyname >= 'A'


select * from customers 
where
		companyname <'E' --zwar hier richtig aber falsch 



		--Alle Kunden, die mit A C F H I M S oder T beginnen
		select * from customers 
where
		companyname like '[ACFHIMST]%'  --[0-5]  [0-9] [a-z]  [a-z|0-9]


--Website zur Eingabe der Wunschpin  4 Zeiche nur Zachen
--leider war die Eingabe von allen zeichen mögich auch tqw&9827

select * from tabellen where pin  >=0 --nein  1
select * from tabellen where pin >= 0 and pin <= 9999   1
select * from tabellen where pin not like '[0-9][0-9][0-9][0-9]'


select * from tabellen
where	sp = 1 and 
			Sp2 = 3 and 
			Sp > 4 or 
			sp like 'A%'

	---JOIN-

